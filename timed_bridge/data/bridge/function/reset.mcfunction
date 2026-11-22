tp @p 88.5 66 63.5 0 0

execute as @p run function bridge:clear_sandstone

execute as @p run function kit:give/bridging

scoreboard players set @a timer_running 0

scoreboard players set #found sandstone 0