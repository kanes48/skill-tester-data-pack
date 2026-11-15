# Replace the old target block with stone.
execute at @e[type=minecraft:marker,tag=aim_target,limit=1] run setblock ~ ~ ~ minecraft:stone

# Remove the marker.
kill @e[type=minecraft:marker,tag=aim_target]