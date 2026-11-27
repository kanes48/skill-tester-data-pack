# Copy the player's aim score
execute store result score #rank_score timer_work run scoreboard players get @p aim_score


# Default: UNRANKED
execute if score #rank_score timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}
execute if score #rank_score timer_work matches 0 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"UNRANKED","color":"gray","bold":true}

# TAS
execute if score #rank_score timer_work matches 50.. run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"TAS","color":"gold","bold":true}
execute if score #rank_score timer_work matches 50.. run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"TAS","color":"gold","bold":true}

# S
execute if score #rank_score timer_work matches 45..49 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"S","color":"green","bold":true}
execute if score #rank_score timer_work matches 45..49 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"S","color":"green","bold":true}

# A
execute if score #rank_score timer_work matches 38..44 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"A","color":"aqua","bold":true}
execute if score #rank_score timer_work matches 38..44 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"A","color":"aqua","bold":true}

# B
execute if score #rank_score timer_work matches 30..37 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"B","color":"yellow","bold":true}
execute if score #rank_score timer_work matches 30..37 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"B","color":"yellow","bold":true}

# D
execute if score #rank_score timer_work matches 20..29 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"D","color":"gold","bold":true}
execute if score #rank_score timer_work matches 20..29 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"D","color":"gold","bold":true}

# F
execute if score #rank_score timer_work matches 1..19 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display,limit=1] text set value {"text":"F","color":"red","bold":true}
execute if score #rank_score timer_work matches 1..19 run data modify entity @e[type=minecraft:text_display,tag=aim_trainer_rank_display_2,limit=1] text set value {"text":"F","color":"red","bold":true}