scoreboard players set #active wither_state 0
execute as @p run function skilltester:timer/stop {id:"wither"}
clear @p
effect clear @p

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

tp @p 42 58 -8