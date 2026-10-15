# Runs as each kart. Gives the kart Speed III for 3s while it drives over a boost pad.
# The pad has no collision, so a kart on it stands in the pad's own block space.
execute if block ~ ~ ~ minekart:boost_pad run effect @s speed 3 2 true
execute if block ~ ~-1 ~ minekart:boost_pad run effect @s speed 3 2 true
