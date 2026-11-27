# Read bot health
execute if score #active pvpbot_state matches 1 if entity @e[tag=pvpbot.bot,limit=1] store result score #hp pvpbot_hp run data get entity @e[tag=pvpbot.bot,limit=1] Health 1

# Display bot health
execute if score #active pvpbot_state matches 1 if entity @e[tag=pvpbot.bot,limit=1] run title @a[tag=pvpbot.player] actionbar [{"text":"Bot HP: ","color":"red"},{"score":{"name":"#hp","objective":"pvpbot_hp"},"color":"white"},{"text":"/100","color":"gray"}]

# Detect bot death
execute if score #active pvpbot_state matches 1 unless entity @e[tag=pvpbot.bot,limit=1] run function pvpbot:win