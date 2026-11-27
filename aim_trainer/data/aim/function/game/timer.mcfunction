# Only run while the game is active.
execute unless score #running aim_data matches 1 run return 0

# Add one tick to the counter.
scoreboard players add #ticks aim_data 1

# Every 20 ticks, remove one second.
execute if score #ticks aim_data matches 20.. run scoreboard players remove #time aim_timer 1

# Reset the tick counter.
execute if score #ticks aim_data matches 20.. run scoreboard players set #ticks aim_data 0

# Update the bossbar.
execute store result bossbar aim:timer value run scoreboard players get #time aim_timer

# Display time and score.
title @s actionbar [{"text":"Time: ","color":"yellow"},{"score":{"name":"#time","objective":"aim_timer"}},{"text":" | Score: ","color":"gold"},{"score":{"name":"@s","objective":"aim_score"}}]

# End the game when time reaches zero.
execute if score #time aim_timer matches ..0 run function aim:game/end