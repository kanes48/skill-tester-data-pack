# Check whether an arrow is close to the target marker.
execute at @e[type=minecraft:marker,tag=aim_target,limit=1] if entity @e[type=minecraft:arrow,distance=..1.5] run function aim:target/hit