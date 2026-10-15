# Item Box
scoreboard players add @a boxcd 0
scoreboard players remove @a[scores={boxcd=1..}] boxcd 1
# ~1.5 reaches the box from a standing player (feet at the floor) and from a kart rider (seated 0.4 lower)
execute as @a[tag=!lotto,scores={boxcd=0}] at @s if block ~ ~1.5 ~ minekart:item_box run tag @s add lotto
execute as @a[tag=lotto] run function lotto

# Boost Pad, Slowdown Terrain and Oil Puddle act on the kart, not its driver:
# a ridden kart moves at its own speed and ignores its rider's effects
execute as @e[family=kart] at @s run function boost_pad
execute as @e[family=kart] at @s run function slowdown
execute as @e[family=kart] at @s run function oil_puddle

# Lightning
execute at @e[tag=lightning] run summon lightning_bolt ~ ~ ~
tag @e[family=kart,tag=lightning] remove lightning

# Kart Painting
execute as @a[tag=paint_red] at @s run function paint_red
execute as @a[tag=paint_orange] at @s run function paint_orange
execute as @a[tag=paint_yellow] at @s run function paint_yellow
execute as @a[tag=paint_green] at @s run function paint_green
execute as @a[tag=paint_purple] at @s run function paint_purple
execute as @a[tag=paint_black] at @s run function paint_black
execute as @a[tag=paint_white] at @s run function paint_white
