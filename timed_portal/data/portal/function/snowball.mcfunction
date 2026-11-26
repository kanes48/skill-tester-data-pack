tag @s add used
tp @p -27 82 -11 180 20

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

execute as @p run function kit:give/portal
execute as @p run function skilltester:timer/start {id:"portal"}