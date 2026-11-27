# Check whether a personal best exists
execute unless data storage skilltester:timers best.endfight run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.endfight run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# Read personal best (only if it exists)
execute if data storage skilltester:timers best.endfight store result score #rank_time timer_work run data get storage skilltester:timers best.endfight 1

# Determine rank and update display
execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches ..719 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 720..1199 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 1200..2399 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 2400..3599 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 3600..5999 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"D","color":"orange","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 6000.. run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}

# Second display
execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches ..719 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 720..1199 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 1200..2399 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 2400..3599 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 3600..5999 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"D","color":"orange","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 6000.. run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}