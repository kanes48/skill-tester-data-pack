
# Stop the game.
scoreboard players set #running aim_data 0

# Display the end title.
title @s title {"text":"TIME'S UP!","color":"gold","bold":true}

# Display the final score.
title @s subtitle [{"text":"Final score: ","color":"yellow"},{"score":{"name":"@s","objective":"aim_score"}}]

# Hide the timer.
bossbar set aim:timer visible false

# Remove the active target.
function aim:target/remove

# Remove the wall
fill 129 102 -62 129 108 -48 minecraft:air

# Remove the fence
fill 121 102 -70 121 102 -40 minecraft:air

clear @p

effect clear @p

tp @p 42 58 -8

# Remove the player tag.
tag @s remove aim_player

# Play a completion sound.
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
