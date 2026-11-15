# Reset the player's score.
scoreboard players set @s aim_score 0

# Mark the player as participating.
tag @s add aim_player

# Reset the timer.
scoreboard players set #time aim_timer 30
scoreboard players set #ticks aim_data 0

# Activate the game.
scoreboard players set #running aim_data 1

# Show the bossbar.
bossbar set aim:timer players @s
bossbar set aim:timer value 30
bossbar set aim:timer visible true

# Build the wall and spawn the first target.
function aim:build
function aim:target/spawn

# Announce the start.
title @s title {"text":"AIM TRAINER","color":"gold"}
title @s subtitle {"text":"30 seconds!","color":"yellow"}