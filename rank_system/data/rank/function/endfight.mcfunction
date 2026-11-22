# Check whether a personal best exists
execute unless data storage skilltester:timers best.endfight run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# Read personal best (only if it exists)
execute if data storage skilltester:timers best.endfight store result score #rank_time timer_work run data get storage skilltester:timers best.endfight 1

# Determine rank and update display
execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches ..199 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 200..249 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"PRO","color":"green","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 250..299 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"DECENT","color":"aqua","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 300..399 run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"BEGINNER","color":"yellow","bold":true}

execute if data storage skilltester:timers best.endfight if score #rank_time timer_work matches 400.. run data modify entity @e[type=minecraft:text_display,tag=end_fight_rank_display,limit=1] text set value {"text":"CHUD","color":"red","bold":true}