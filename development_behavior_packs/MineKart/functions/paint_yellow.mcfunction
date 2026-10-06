# Repaints the ridden kart yellow. Dye is only consumed if a kart is repainted.
execute if entity @e[type=minekart:mario_kart_50,r=3] run clear @s minecraft:yellow_dye 0 1
execute if entity @e[type=minekart:mario_kart_50,r=3] run summon minekart:mario_kart_50_yellow ~ ~ ~
execute if entity @e[type=minekart:mario_kart_50_yellow,r=3] run ride @s start_riding @e[type=minekart:mario_kart_50_yellow,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_50,r=3] run kill @e[type=minekart:mario_kart_50,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_100,r=3] run clear @s minecraft:yellow_dye 0 1
execute if entity @e[type=minekart:mario_kart_100,r=3] run summon minekart:mario_kart_100_yellow ~ ~ ~
execute if entity @e[type=minekart:mario_kart_100_yellow,r=3] run ride @s start_riding @e[type=minekart:mario_kart_100_yellow,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_100,r=3] run kill @e[type=minekart:mario_kart_100,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_150,r=3] run clear @s minecraft:yellow_dye 0 1
execute if entity @e[type=minekart:mario_kart_150,r=3] run summon minekart:mario_kart_150_yellow ~ ~ ~
execute if entity @e[type=minekart:mario_kart_150_yellow,r=3] run ride @s start_riding @e[type=minekart:mario_kart_150_yellow,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_150,r=3] run kill @e[type=minekart:mario_kart_150,r=3,c=1]
tag @s remove paint_yellow
