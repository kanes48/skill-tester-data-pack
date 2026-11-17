# Remove any previous bot
kill @e[tag=pvpbot.bot]

# Reset previous player
tag @a[tag=pvpbot.player] remove pvpbot.player

# Register the fighting player
tag @s add pvpbot.player

# Reset fight state
scoreboard players set #active pvpbot_state 0

# Spawn bot four blocks in front of player
summon minecraft:wither_skeleton 121 108 -55 {Tags:["pvpbot.bot"],PersistenceRequired:1b,CanPickUpLoot:0b,CustomName:{text:"PvP Bot",color:"red",bold:true},CustomNameVisible:1b}

# Configure bot
execute as @e[tag=pvpbot.bot,limit=1,sort=nearest] run function pvpbot:setup_bot

# Initialize player's death counter
scoreboard players add @s pvpbot_deaths 0

# Save death count at the beginning of the fight
scoreboard players operation #start_deaths pvpbot_deaths = @s pvpbot_deaths

# Assign bossbar to fighting player
bossbar set pvpbot:health players @s

# Show bossbar
bossbar set pvpbot:health visible true

# Set bossbar to full health
bossbar set pvpbot:health value 200

# Activate fight
scoreboard players set #active pvpbot_state 1

# Start title
title @s title {"text":"FIGHT!","color":"red","bold":true}
title @s subtitle {"text":"Defeat the PvP Bot!","color":"yellow"}

tellraw @s {"text":"The PvP Bot has spawned. Good luck!","color":"gold"}