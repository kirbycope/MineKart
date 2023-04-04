# Banana
#execute @p ~ ~ ~ detect ~ ~ ~ minekart:banana_peel -1 entity @e[type=cow,c=1]

# Item Box
execute @p[tag=!lotto] ~ ~ ~ detect ~ ~ ~ minekart:item_box 0 tag @s add lotto
execute @a[tag=lotto] ~ ~ ~ function lotto

# Lightning
execute @e[tag=lightning] ~ ~ ~ summon lightning_bolt ~ ~ ~
tag @e[type=minekart:mario_kart] remove lightning

# Red Shell
tp @e[type=minekart:red_shell_entity] ^ ^ ^1 facing @e[tag=homing]
tag @e remove homing
