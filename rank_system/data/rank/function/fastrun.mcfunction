# Read personal best
execute if data storage skilltester:timers best.fastrun store result score #rank_time timer_work run data get storage skilltester:timers best.fastrun 1

# UNRANKED (missing time or 0)
execute unless data storage skilltester:timers best.fastrun run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.fastrun run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# TAS (<11 seconds)
execute if score #rank_time timer_work matches 1..219 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}
execute if score #rank_time timer_work matches 1..219 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

# S (11–11.95 seconds)
execute if score #rank_time timer_work matches 220..239 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}
execute if score #rank_time timer_work matches 220..239 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

# A (12–12.95 seconds)
execute if score #rank_time timer_work matches 240..259 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}
execute if score #rank_time timer_work matches 240..259 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

# B (13–13.95 seconds)
execute if score #rank_time timer_work matches 260..279 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}
execute if score #rank_time timer_work matches 260..279 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

# D (14–15.95 seconds)
execute if score #rank_time timer_work matches 280..319 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"D","color":"gold","bold":true}
execute if score #rank_time timer_work matches 280..319 run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"D","color":"gold","bold":true}

# F (16+ seconds)
execute if score #rank_time timer_work matches 320.. run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}
execute if score #rank_time timer_work matches 320.. run data modify entity @e[type=minecraft:text_display,tag=fast_run_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}