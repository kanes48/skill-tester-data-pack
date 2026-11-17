# Stop the game.
scoreboard players set #running aim_data 0

# Remove the active target.
function aim:target/remove

# Hide the bossbar.
bossbar set aim:timer visible false

# Remove the wall
fill 129 102 -62 129 108 -48 minecraft:air

# Remove the fence
fill 121 102 -70 121 102 -40 minecraft:air

clear @p

effect clear @p

tp @p 75 51 -13

# Remove the player tag.
tag @s remove aim_player