tp @e[type=minekart:red_shell_entity] ^ ^ ^1 facing @e[tag=homing]

#execute at @e[tag=lightning] run summon lightning_bolt ~ ~ ~
execute @e[tag=lightning] ~ ~ ~ summon lightning_bolt ~ ~ ~
tag @e[type=minekart:mario_kart] remove lightning
