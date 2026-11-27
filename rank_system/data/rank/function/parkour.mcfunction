# Read personal best
execute if data storage skilltester:timers best.parkour store result score #rank_time timer_work run data get storage skilltester:timers best.parkour 1

# UNRANKED (missing time or 0)
execute unless data storage skilltester:timers best.parkour run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.parkour run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# TAS (<460 ticks)
execute if score #rank_time timer_work matches 1..459 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}
execute if score #rank_time timer_work matches 1..459 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

# S (460–499 ticks)
execute if score #rank_time timer_work matches 460..499 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}
execute if score #rank_time timer_work matches 460..499 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

# A (500–539 ticks)
execute if score #rank_time timer_work matches 500..539 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}
execute if score #rank_time timer_work matches 500..539 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

# B (540–579 ticks)
execute if score #rank_time timer_work matches 540..579 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}
execute if score #rank_time timer_work matches 540..579 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

# D (580–639 ticks)
execute if score #rank_time timer_work matches 580..639 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"D","color":"gold","bold":true}
execute if score #rank_time timer_work matches 580..639 run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"D","color":"gold","bold":true}

# F (640+ ticks)
execute if score #rank_time timer_work matches 640.. run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}
execute if score #rank_time timer_work matches 640.. run data modify entity @e[type=minecraft:text_display,tag=parkour_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}