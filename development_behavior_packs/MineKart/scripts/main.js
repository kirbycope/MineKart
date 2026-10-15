// Red and Spiny Shell homing. A projectile's own "homing" flag only follows a target its shooter has set,
// which a player never does, so each shell is steered here instead: it locks onto the nearest kart that is not
// its thrower's, and every tick turns its velocity toward that kart. Red Shells look ahead within 48 blocks;
// Spiny Shells chase the nearest kart within 128 blocks in any direction.
import { world, system } from "@minecraft/server";

const SHELLS = {
	"minekart:red_shell_entity": { range: 48, aheadOnly: true },
	"minekart:spiny_shell_entity": { range: 128, aheadOnly: false },
};
const TURN = 0.35; // how much of the way toward the target the heading swings each tick
const MIN_SPEED = 1.0; // blocks per tick
const targets = new Map(); // shell id -> target kart id

const sub = (a, b) => ({ x: a.x - b.x, y: a.y - b.y, z: a.z - b.z });
const len = (v) => Math.hypot(v.x, v.y, v.z);
const scale = (v, s) => ({ x: v.x * s, y: v.y * s, z: v.z * s });
const unit = (v) => { const l = len(v); return l > 0 ? scale(v, 1 / l) : v; };

function ownKart(shell) {
	const owner = shell.getComponent("minecraft:projectile")?.owner;
	return owner?.isValid ? owner.getComponent("minecraft:riding")?.entityRidingOn : undefined;
}

function pickTarget(shell, rules) {
	const own = ownKart(shell);
	const heading = shell.getVelocity();
	let best, bestDistance = Infinity;
	for (const kart of shell.dimension.getEntities({ families: ["kart"], location: shell.location, maxDistance: rules.range })) {
		if (own && kart.id === own.id) continue;
		const to = sub(kart.location, shell.location);
		if (rules.aheadOnly && to.x * heading.x + to.z * heading.z <= 0) continue;
		const distance = len(to);
		if (distance < bestDistance) { best = kart; bestDistance = distance; }
	}
	return best;
}

function steer(shell, rules) {
	let target = targets.has(shell.id) ? world.getEntity(targets.get(shell.id)) : undefined;
	if (!target?.isValid) {
		target = pickTarget(shell, rules);
		if (!target) return;
		targets.set(shell.id, target.id);
	}
	const velocity = shell.getVelocity();
	const speed = Math.max(len(velocity), MIN_SPEED);
	const toward = unit(sub({ x: target.location.x, y: target.location.y + 0.5, z: target.location.z }, shell.location));
	const heading = unit({
		x: velocity.x + (toward.x * speed - velocity.x) * TURN,
		y: velocity.y + (toward.y * speed - velocity.y) * TURN,
		z: velocity.z + (toward.z * speed - velocity.z) * TURN,
	});
	shell.clearVelocity();
	shell.applyImpulse(scale(heading, speed));
}

system.runInterval(() => {
	const alive = new Set();
	for (const dimension of ["overworld", "nether", "the_end"].map((id) => world.getDimension(id))) {
		for (const [type, rules] of Object.entries(SHELLS)) {
			for (const shell of dimension.getEntities({ type })) {
				alive.add(shell.id);
				steer(shell, rules);
			}
		}
	}
	for (const id of targets.keys()) if (!alive.has(id)) targets.delete(id);
});
