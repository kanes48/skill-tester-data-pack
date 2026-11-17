# Remove the previous target.
function aim:target/remove

# Generate random coordinates.
execute store result storage aim:target z int 1 run random value -62..-48
execute store result storage aim:target y int 1 run random value 102..108

# Save the Z coordinate.
data modify storage aim:target x set value 129

# Place the new target.
function aim:target/place with storage aim:target

# Create a marker to remember its position.
summon minecraft:marker 129 102 -62 {Tags:["aim_target"]}

# Move the marker to the randomized position.
execute as @e[type=minecraft:marker,tag=aim_target,limit=1] run function aim:target/move with storage aim:target