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
execute @a[scores={timer=6}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:banana
execute @a[scores={timer=12}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:blooper
execute @a[scores={timer=18}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:bob-omb
execute @a[scores={timer=24}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:boo
execute @a[scores={timer=30}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:green_shell
execute @a[scores={timer=36}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:lightning
execute @a[scores={timer=42}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:mushroom
execute @a[scores={timer=48}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:red_shell
execute @a[scores={timer=54}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:spiny_shell
execute @a[scores={timer=60}] ~ ~ ~ replaceitem entity @s slot.hotbar 0 minekart:star

# End item roll
execute @a[scores={timer=61..}] ~ ~ ~ tag @s remove lotto
execute @a[scores={timer=61..}] ~ ~ ~ scoreboard players set @s timer 0

# Increment timer if running
execute @a[tag=lotto] ~ ~ ~ scoreboard players add @s timer 1
