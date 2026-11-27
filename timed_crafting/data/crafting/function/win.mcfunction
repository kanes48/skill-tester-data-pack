clear @p

scoreboard players set @a crafting_active 0

scoreboard players set @s items_ready 0

execute as @p run function skilltester:timer/stop {id:"crafting"}