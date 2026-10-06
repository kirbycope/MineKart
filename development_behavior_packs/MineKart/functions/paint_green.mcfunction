# Repaints the ridden kart green. Dye is only consumed if a kart is repainted.
execute if entity @e[type=minekart:mario_kart_50,r=3] run clear @s minecraft:green_dye 0 1
execute if entity @e[type=minekart:mario_kart_50,r=3] run summon minekart:mario_kart_50_green ~ ~ ~
execute if entity @e[type=minekart:mario_kart_50_green,r=3] run ride @s start_riding @e[type=minekart:mario_kart_50_green,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_50,r=3] run kill @e[type=minekart:mario_kart_50,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_100,r=3] run clear @s minecraft:green_dye 0 1
execute if entity @e[type=minekart:mario_kart_100,r=3] run summon minekart:mario_kart_100_green ~ ~ ~
execute if entity @e[type=minekart:mario_kart_100_green,r=3] run ride @s start_riding @e[type=minekart:mario_kart_100_green,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_100,r=3] run kill @e[type=minekart:mario_kart_100,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_150,r=3] run clear @s minecraft:green_dye 0 1
execute if entity @e[type=minekart:mario_kart_150,r=3] run summon minekart:mario_kart_150_green ~ ~ ~
execute if entity @e[type=minekart:mario_kart_150_green,r=3] run ride @s start_riding @e[type=minekart:mario_kart_150_green,r=3,c=1]
execute if entity @e[type=minekart:mario_kart_150,r=3] run kill @e[type=minekart:mario_kart_150,r=3,c=1]
tag @s remove paint_green
