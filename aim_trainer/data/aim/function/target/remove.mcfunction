# Replace the old target block with stone.
execute at @e[type=minecraft:marker,tag=aim_target,limit=1] run setblock ~ ~ ~ minecraft:stripped_poplar_wood

# Remove the marker.
kill @e[type=minecraft:marker,tag=aim_target]