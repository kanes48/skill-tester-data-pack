# Stop the game.
scoreboard players set #running aim_data 0

# Remove the active target.
function aim:target/remove

# Hide the bossbar.
bossbar set aim:timer visible false

# Remove the player tag.
tag @s remove aim_player