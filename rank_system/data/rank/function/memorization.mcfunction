# Read personal best
execute if data storage skilltester:timers best.memorization store result score #rank_time timer_work run data get storage skilltester:timers best.memorization 1

# UNRANKED (missing time or 0)
execute unless data storage skilltester:timers best.memorization run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.memorization run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# TAS (<15 seconds)
execute if score #rank_time timer_work matches 1..299 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}
execute if score #rank_time timer_work matches 1..299 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

# S (15–17.95 seconds)
execute if score #rank_time timer_work matches 300..359 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}
execute if score #rank_time timer_work matches 300..359 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

# A (18–20.95 seconds)
execute if score #rank_time timer_work matches 360..419 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}
execute if score #rank_time timer_work matches 360..419 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

# B (21–23.95 seconds)
execute if score #rank_time timer_work matches 420..479 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}
execute if score #rank_time timer_work matches 420..479 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

# D (24–28.95 seconds)
execute if score #rank_time timer_work matches 480..579 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"D","color":"gold","bold":true}
execute if score #rank_time timer_work matches 480..579 run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"D","color":"gold","bold":true}

# F (29+ seconds)
execute if score #rank_time timer_work matches 580.. run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}
execute if score #rank_time timer_work matches 580.. run data modify entity @e[type=minecraft:text_display,tag=memorization_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}