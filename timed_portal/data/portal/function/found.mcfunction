scoreboard players set #found portalScan 1
place template minecraft:portal_arena 60 49 -93
execute as @p run function skilltester:timer/stop {id:"portal"}
scoreboard players set #found portalScan 0