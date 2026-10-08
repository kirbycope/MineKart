scoreboard players add @s timer 0

# Cancel a new roll (timer 0) if the player already holds a MineKart item
tag @s[scores={timer=0},hasitem={item=minekart:banana,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:blooper,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:bob-omb,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:boo,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:green_shell,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:lightning,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:mushroom,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:red_shell,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:spiny_shell,location=slot.hotbar}] remove lotto
tag @s[scores={timer=0},hasitem={item=minekart:star,location=slot.hotbar}] remove lotto
execute unless entity @s[tag=lotto] run scoreboard players set @s timer 0

# Roulette visual - cycle through the items as the timer climbs
# Safety: the first step only fills an empty hand ("keep"), so a held item is never destroyed;
# if the hand held something else the banana did not go in, and the roll is cancelled
execute if entity @s[tag=lotto] if score @s timer matches 6 run replaceitem entity @s slot.weapon.mainhand 0 keep minekart:banana
execute if score @s timer matches 6 unless entity @s[hasitem={item=minekart:banana,location=slot.weapon.mainhand}] run tag @s remove lotto
execute if score @s timer matches 6 unless entity @s[tag=lotto] run scoreboard players set @s timer 0
execute if entity @s[tag=lotto] if score @s timer matches 12 run replaceitem entity @s slot.weapon.mainhand 0 minekart:blooper
execute if entity @s[tag=lotto] if score @s timer matches 18 run replaceitem entity @s slot.weapon.mainhand 0 minekart:bob-omb
execute if entity @s[tag=lotto] if score @s timer matches 24 run replaceitem entity @s slot.weapon.mainhand 0 minekart:boo
execute if entity @s[tag=lotto] if score @s timer matches 30 run replaceitem entity @s slot.weapon.mainhand 0 minekart:green_shell
execute if entity @s[tag=lotto] if score @s timer matches 36 run replaceitem entity @s slot.weapon.mainhand 0 minekart:lightning
execute if entity @s[tag=lotto] if score @s timer matches 42 run replaceitem entity @s slot.weapon.mainhand 0 minekart:mushroom
execute if entity @s[tag=lotto] if score @s timer matches 48 run replaceitem entity @s slot.weapon.mainhand 0 minekart:red_shell
execute if entity @s[tag=lotto] if score @s timer matches 54 run replaceitem entity @s slot.weapon.mainhand 0 minekart:spiny_shell
execute if entity @s[tag=lotto] if score @s timer matches 60 run replaceitem entity @s slot.weapon.mainhand 0 minekart:star

# Roll the winner - pick a random item when the roulette ends
# (101-110 range so it can't collide with the visual thresholds above)
execute if entity @s[tag=lotto] if score @s timer matches 61 run scoreboard players random @s timer 101 110
execute if entity @s[tag=lotto] if score @s timer matches 101 run replaceitem entity @s slot.weapon.mainhand 0 minekart:banana
execute if entity @s[tag=lotto] if score @s timer matches 102 run replaceitem entity @s slot.weapon.mainhand 0 minekart:blooper
execute if entity @s[tag=lotto] if score @s timer matches 103 run replaceitem entity @s slot.weapon.mainhand 0 minekart:bob-omb
execute if entity @s[tag=lotto] if score @s timer matches 104 run replaceitem entity @s slot.weapon.mainhand 0 minekart:boo
execute if entity @s[tag=lotto] if score @s timer matches 105 run replaceitem entity @s slot.weapon.mainhand 0 minekart:green_shell
execute if entity @s[tag=lotto] if score @s timer matches 106 run replaceitem entity @s slot.weapon.mainhand 0 minekart:lightning
execute if entity @s[tag=lotto] if score @s timer matches 107 run replaceitem entity @s slot.weapon.mainhand 0 minekart:mushroom
execute if entity @s[tag=lotto] if score @s timer matches 108 run replaceitem entity @s slot.weapon.mainhand 0 minekart:red_shell
execute if entity @s[tag=lotto] if score @s timer matches 109 run replaceitem entity @s slot.weapon.mainhand 0 minekart:spiny_shell
execute if entity @s[tag=lotto] if score @s timer matches 110 run replaceitem entity @s slot.weapon.mainhand 0 minekart:star

# End the roll and reset the timer
execute if score @s timer matches 101..110 run tag @s remove lotto
execute if score @s timer matches 101..110 run scoreboard players set @s timer 0
execute if score @s timer matches 101..110 run scoreboard players set @s boxcd 40

# Keep the timer climbing while the roulette is running
execute if entity @s[tag=lotto] run scoreboard players add @s timer 1
