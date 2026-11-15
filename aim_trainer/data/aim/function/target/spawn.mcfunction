# Remove the previous target.
function aim:target/remove

# Generate random coordinates.
execute store result storage aim:target x int 1 run random value 21..35
execute store result storage aim:target y int 1 run random value 49..59

# Save the Z coordinate.
data modify storage aim:target z set value -106

# Place the new target.
function aim:target/place with storage aim:target

# Create a marker to remember its position.
summon minecraft:marker 21 49 -106 {Tags:["aim_target"]}

# Move the marker to the randomized position.
execute as @e[type=minecraft:marker,tag=aim_target,limit=1] run function aim:target/move with storage aim:target