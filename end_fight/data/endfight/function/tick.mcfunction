# If dragon dies => win function
execute as @a[tag=endfight_active] at @s if dimension minecraft:the_end unless entity @e[type=minecraft:ender_dragon,tag=endfight_dragon] run function endfight:win

# If player died => lose function
execute as @a[tag=endfight_active,scores={endfight_deaths=1..}] run function endfight:lose

# Update bossbar to match dragon health
execute store result bossbar endfight:dragon value run data get entity @e[type=minecraft:ender_dragon,tag=endfight_dragon,limit=1] Health

# If an iron pickaxe is dropped while the fight is active => lose
execute as @a[tag=endfight_active] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=..10] run function endfight:reset