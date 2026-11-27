scoreboard players set #found portalScan 1
tp @p -27 82 -11
place template minecraft:portal_island -41 79 -24
execute as @p run function skilltester:timer/stop {id:"portal"}
scoreboard players set #found portalScan 0