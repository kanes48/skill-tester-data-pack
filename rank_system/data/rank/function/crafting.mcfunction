# Check whether a personal best exists
execute unless data storage skilltester:timers best.crafting run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# Read personal best (only if it exists)
execute if data storage skilltester:timers best.crafting store result score #rank_time timer_work run data get storage skilltester:timers best.crafting 1

# Determine rank and update display
execute if data storage skilltester:timers best.crafting if score #rank_time timer_work matches ..359 run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

execute if data storage skilltester:timers best.crafting if score #rank_time timer_work matches 360..399 run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}

execute if data storage skilltester:timers best.crafting if score #rank_time timer_work matches 400..459 run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}

execute if data storage skilltester:timers best.crafting if score #rank_time timer_work matches 460..539 run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}

execute if data storage skilltester:timers best.crafting if score #rank_time timer_work matches 540..639 run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"D","color":"orange","bold":true}

execute if data storage skilltester:timers best.crafting if score #rank_time timer_work matches 640.. run data modify entity @e[type=minecraft:text_display,tag=crafting_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}