# Runs as each kart. Off-road slowdown: a kart on natural terrain gets Slowness I while it stays there.
# Players on foot are never slowed. Stay on the track!
execute if block ~ ~-1 ~ grass_block run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ dirt run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ coarse_dirt run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ podzol run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ mycelium run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ sand run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ red_sand run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ gravel run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ soul_sand run effect @s slowness 1 0 true
execute if block ~ ~-1 ~ mud run effect @s slowness 1 0 true
