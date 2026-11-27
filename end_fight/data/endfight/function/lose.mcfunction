clear @p 

# Reset player death counter
scoreboard players set @p endfight_deaths 0

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

kill @e[type=ender_pearl]

tag @a[tag=endfight_active] remove endfight_active

# Disallow block breaking by the dragon
gamerule mob_griefing false

# Disallow fall damage
gamerule fall_damage false

scoreboard players set @s timer_running 0

# Hide bossbar
bossbar set endfight:dragon visible false