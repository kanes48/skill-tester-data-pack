scoreboard players set #phase mem 0
tellraw @a {"text":"Correct! Memorization completed.","color":"green"}
execute as @p run function skilltester:timer/stop {id:"memorization"}
