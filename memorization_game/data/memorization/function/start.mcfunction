scoreboard players set #phase mem 1

fill 66 79 68 52 92 82 air replace minecraft:red_concrete
fill 66 79 68 52 92 82 air replace minecraft:blue_concrete
fill 66 79 68 52 92 82 air replace minecraft:green_concrete

clear @a

execute as @p run function skilltester:timer/start {id:"memorization"}
function memorization:generate

