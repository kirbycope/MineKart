tp @e[type=minekart:red_shell_entity] ^ ^ ^1 facing @e[tag=homing]
tag @e remove homing

execute @e[tag=lightning] ~ ~ ~ summon lightning_bolt ~ ~ ~
tag @e[type=minekart:mario_kart] remove lightning
