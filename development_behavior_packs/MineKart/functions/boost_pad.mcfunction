# Gives Speed II for 3s to anyone driving over a boost pad.
# Runs every tick, so the effect refreshes while on the pad.
execute if block ~ ~-1 ~ minekart:boost_pad run effect @s speed 3 2 true
execute if block ~ ~-2 ~ minekart:boost_pad run effect @s speed 3 2 true
