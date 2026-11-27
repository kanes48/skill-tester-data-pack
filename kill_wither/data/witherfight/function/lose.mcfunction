scoreboard players set #active wither_state 0

kill @e[type=minecraft:wither,tag=wither_fight]

effect clear @s
tp @s 79 51 -13
clear @p

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

tellraw @s {"text":"YOu lost","color":"gold"}

scoreboard players set @a timer_running 0
