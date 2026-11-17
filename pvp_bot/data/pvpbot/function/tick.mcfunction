# Check whether the fight is active
execute if score #active pvpbot_state matches 1 if entity @e[tag=pvpbot.bot,limit=1] store result bossbar pvpbot:health value run data get entity @e[tag=pvpbot.bot,limit=1] Health 1

# Detect if the player died
execute if score #active pvpbot_state matches 1 as @a[tag=pvpbot.player] if score @s pvpbot_deaths > #start_deaths pvpbot_deaths run function pvpbot:stop

# Detect if the bot died
execute if score #active pvpbot_state matches 1 unless entity @e[tag=pvpbot.bot,limit=1] run function pvpbot:win