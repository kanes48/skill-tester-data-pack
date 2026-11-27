scoreboard players set @a crafting_active 1

execute as @p run function skilltester:timer/start {id:"crafting"}

execute as @p run function kit:give/crafting