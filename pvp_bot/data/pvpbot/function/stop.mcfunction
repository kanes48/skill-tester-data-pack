# Hide bossbar
bossbar set pvpbot:health visible false

# Remove bot
kill @e[tag=pvpbot.bot]

# End fight
scoreboard players set #active pvpbot_state 0

# Remove player tag
tag @a[tag=pvpbot.player] remove pvpbot.player

clear @p

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

scoreboard players set @s timer_running 0

title @a title {"text":"DEFEAT!","color":"red","bold":true}
