# Check if player has an item(s) already
tag @p[hasitem={item=minekart:banana,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:blooper,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:bob-omb,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:boo,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:green_shell,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:lightning,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:mushroom,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:red_shell,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:spiny_shell,location=slot.hotbar}] remove lotto
tag @p[hasitem={item=minekart:star,location=slot.hotbar}] remove lotto

# Cycle each item
execute as @a[scores={timer=6}] run replaceitem entity @s slot.hotbar 0 minekart:banana
execute as @a[scores={timer=12}] run replaceitem entity @s slot.hotbar 0 minekart:blooper
execute as @a[scores={timer=18}] run replaceitem entity @s slot.hotbar 0 minekart:bob-omb
execute as @a[scores={timer=24}] run replaceitem entity @s slot.hotbar 0 minekart:boo
execute as @a[scores={timer=30}] run replaceitem entity @s slot.hotbar 0 minekart:green_shell
execute as @a[scores={timer=36}] run replaceitem entity @s slot.hotbar 0 minekart:lightning
execute as @a[scores={timer=42}] run replaceitem entity @s slot.hotbar 0 minekart:mushroom
execute as @a[scores={timer=48}] run replaceitem entity @s slot.hotbar 0 minekart:red_shell
execute as @a[scores={timer=54}] run replaceitem entity @s slot.hotbar 0 minekart:spiny_shell
execute as @a[scores={timer=60}] run replaceitem entity @s slot.hotbar 0 minekart:star

# End item roll
execute as @a[scores={timer=61..}] run tag @s remove lotto
execute as @a[scores={timer=61..}] run scoreboard players set @s timer 0

# Increment timer if running
execute as @a[tag=lotto] run scoreboard players add @s timer 1
