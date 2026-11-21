clear @p 

# Reset player death counter
scoreboard players set @p endfight_deaths 0

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

tag @a[tag=endfight_active] remove endfight_active

# Disallow block breaking by the dragon
gamerule mob_griefing false

# Disallow fall damage
gamerule fall_damage false

# Stop the end_fight timer
execute as @p run function skilltester:timer/stop {id:"endfight"}

# TP player back to overworld
tp @p 0 11 11

# Hide bossbar
bossbar set endfight:dragon visible false