execute if score #found portalScan matches 0 run function portal:scan

# Reset Logic
execute at @e[type=minecraft:egg,tag=!used] run place template minecraft:portal_island -41 79 -24
execute as @e[type=minecraft:egg,tag=!used] at @s run function portal:egg