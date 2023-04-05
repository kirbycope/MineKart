# Item Box
#execute @p[tag=!lotto] ~ ~ ~ detect ~ ~ ~ minekart:item_box 0 tag @s add lotto
#/execute if block ~ ~1 ~ minekart:item_box run say hi
execute at @p[tag=!lotto] if block ~ ~1 ~ minekart:item_box run tag @p[c=1] add lotto
execute as @a[tag=lotto] run function lotto

# Lightning
execute at @e[tag=lightning] run summon lightning_bolt ~ ~ ~
tag @e[type=minekart:mario_kart] remove lightning

# Red Shell
#tp @e[type=minekart:red_shell_entity] ^ ^ ^1 facing @e[tag=homing]
#tag @e remove homing
