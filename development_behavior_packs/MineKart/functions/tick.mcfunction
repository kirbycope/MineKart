# Item Box
execute as @a[tag=!lotto] at @s if block ~ ~1 ~ minekart:item_box run tag @s add lotto
execute as @a[tag=lotto] run function lotto

# Boost Pad
execute as @a at @s run function boost_pad

# Slowdown Terrain
execute as @a at @s run function slowdown

# Oil Puddle
execute as @a at @s run function oil_puddle

# Lightning
execute at @e[tag=lightning] run summon lightning_bolt ~ ~ ~
tag @e[type=minekart:mario_kart_50] remove lightning
tag @e[type=minekart:mario_kart_100] remove lightning
tag @e[type=minekart:mario_kart_150] remove lightning

# Red Shell
#tp @e[type=minekart:red_shell_entity] ^ ^ ^1 facing @e[tag=homing]
#tag @e remove homing

# Kart Painting
execute as @a[tag=paint_red] at @s run function paint_red
execute as @a[tag=paint_orange] at @s run function paint_orange
execute as @a[tag=paint_yellow] at @s run function paint_yellow
execute as @a[tag=paint_green] at @s run function paint_green
execute as @a[tag=paint_purple] at @s run function paint_purple
execute as @a[tag=paint_black] at @s run function paint_black
execute as @a[tag=paint_white] at @s run function paint_white
