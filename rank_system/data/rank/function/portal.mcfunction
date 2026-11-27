# Check whether a personal best exists
execute unless data storage skilltester:timers best.portal run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.portal run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# Read personal best (only if it exists)
execute if data storage skilltester:timers best.portal store result score #rank_time timer_work run data get storage skilltester:timers best.portal 1

# Determine rank and update display
execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches ..139 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 140..169 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 170..209 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 210..279 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 280..319 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"D","color":"orange","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 320.. run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}

# Second display
execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches ..139 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 140..169 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 170..209 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 210..279 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 280..319 run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"D","color":"orange","bold":true}

execute if data storage skilltester:timers best.portal if score #rank_time timer_work matches 320.. run data modify entity @e[type=minecraft:text_display,tag=portal_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}