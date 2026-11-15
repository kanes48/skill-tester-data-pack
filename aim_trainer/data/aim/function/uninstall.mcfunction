# Stop the game.
scoreboard players set #running aim_data 0

# Remove targets and markers.
function aim:target/remove

# Remove the bossbar.
bossbar remove aim:timer

# Remove scoreboards.
scoreboard objectives remove aim_score
scoreboard objectives remove aim_timer
scoreboard objectives remove aim_data

# Remove player tags.
tag @a remove aim_player