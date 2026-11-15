
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

# Remove the player tag.
tag @s remove aim_player

# Play a completion sound.
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
