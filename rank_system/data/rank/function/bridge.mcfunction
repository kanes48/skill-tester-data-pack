# Read personal best
execute if data storage skilltester:timers best.bridge store result score #rank_time timer_work run data get storage skilltester:timers best.bridge 1

# UNRANKED (missing time or 0)
execute unless data storage skilltester:timers best.bridge run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.bridge run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# TAS (<5 seconds)
execute if score #rank_time timer_work matches 1..99 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}
execute if score #rank_time timer_work matches 1..99 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

# S (5–5.95 seconds)
execute if score #rank_time timer_work matches 100..119 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}
execute if score #rank_time timer_work matches 100..119 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

# A (6–6.95 seconds)
execute if score #rank_time timer_work matches 120..139 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}
execute if score #rank_time timer_work matches 120..139 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

# B (7–7.95 seconds)
execute if score #rank_time timer_work matches 140..159 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}
execute if score #rank_time timer_work matches 140..159 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

# D (8–9.95 seconds)
execute if score #rank_time timer_work matches 160..199 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"D","color":"gold","bold":true}
execute if score #rank_time timer_work matches 160..199 run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"D","color":"gold","bold":true}

# F (10+ seconds)
execute if score #rank_time timer_work matches 200.. run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}
execute if score #rank_time timer_work matches 200.. run data modify entity @e[type=minecraft:text_display,tag=bridging_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}