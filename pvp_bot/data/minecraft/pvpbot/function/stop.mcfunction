# Disable fight
scoreboard players set #active pvpbot_state 0

# Remove bot
kill @e[tag=pvpbot.bot]

# Remove player tag
tag @a[tag=pvpbot.player] remove pvpbot.player

# Display message
title @a title {"text":"Fight stopped","color":"gray"}

tellraw @a {"text":"[PvP Bot Arena] The fight was stopped.","color":"gray"}