# Read personal best
execute if data storage skilltester:timers best.pvpbot store result score #rank_time timer_work run data get storage skilltester:timers best.pvpbot 1

# UNRANKED (missing time or 0)
execute unless data storage skilltester:timers best.pvpbot run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute unless data storage skilltester:timers best.pvpbot run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_time timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# TAS (<520 ticks)
execute if score #rank_time timer_work matches 1..519 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}
execute if score #rank_time timer_work matches 1..519 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

# S (520–599 ticks)
execute if score #rank_time timer_work matches 520..599 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}
execute if score #rank_time timer_work matches 520..599 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

# A (600–699 ticks)
execute if score #rank_time timer_work matches 600..699 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}
execute if score #rank_time timer_work matches 600..699 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

# B (700–799 ticks)
execute if score #rank_time timer_work matches 700..799 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}
execute if score #rank_time timer_work matches 700..799 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

# D (800–999 ticks)
execute if score #rank_time timer_work matches 800..999 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"D","color":"gold","bold":true}
execute if score #rank_time timer_work matches 800..999 run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"D","color":"gold","bold":true}

# F (1000+ ticks)
execute if score #rank_time timer_work matches 1000.. run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}
execute if score #rank_time timer_work matches 1000.. run data modify entity @e[type=minecraft:text_display,tag=pvp_bot_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}