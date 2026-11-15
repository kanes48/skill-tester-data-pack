# Remove any previous bot
kill @e[tag=pvpbot.bot]

# Reset previous player
tag @a[tag=pvpbot.player] remove pvpbot.player

# Register the fighting player
tag @s add pvpbot.player

# Reset fight state
scoreboard players set #active pvpbot_state 0

# Spawn bot four blocks in front of player
summon minecraft:wither_skeleton 10 47 -104 {Tags:["pvpbot.bot"],PersistenceRequired:1b,CanPickUpLoot:0b,CustomName:{text:"PvP Bot",color:"red",bold:true},CustomNameVisible:1b}

# Configure bot
execute as @e[tag=pvpbot.bot,limit=1,sort=nearest] run function pvpbot:setup_bot

# Activate fight
scoreboard players set #active pvpbot_state 1

# Start title
title @s title {"text":"FIGHT!","color":"red","bold":true}
title @s subtitle {"text":"Defeat the PvP Bot!","color":"yellow"}

tellraw @s {"text":"The PvP Bot has spawned. Good luck!","color":"gold"}