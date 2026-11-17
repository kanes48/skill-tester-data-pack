scoreboard objectives add pvpbot_state dummy
scoreboard objectives add pvpbot_hp dummy

bossbar add pvpbot:health {"text":"PvP Bot","color":"red","bold":true}

bossbar set pvpbot:health max 200
bossbar set pvpbot:health color red
bossbar set pvpbot:health style progress

scoreboard objectives add pvpbot_deaths deathCount

execute unless score #active pvpbot_state matches 0.. run scoreboard players set #active pvpbot_state 0
