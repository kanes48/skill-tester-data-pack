scoreboard players set #active wither_state 0
execute as @p run function skilltester:timer/stop {id:"wither"}
clear @p
effect clear @p
tp @p 42 58 -8