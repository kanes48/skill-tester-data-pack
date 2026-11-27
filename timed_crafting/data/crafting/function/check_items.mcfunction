# Reset check
scoreboard players set @s items_ready 1

# Tools
execute store result score @s temp run clear @s minecraft:iron_pickaxe 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:iron_shovel 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:iron_axe 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:flint_and_steel 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:bucket 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:shears 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:diamond_sword 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

# Food
execute store result score @s temp run clear @s minecraft:bread 0
execute unless score @s temp matches 16.. run scoreboard players set @s items_ready 0

# Transport
execute store result score @s temp run clear @s minecraft:oak_boat 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

# Gold armor
execute store result score @s temp run clear @s minecraft:golden_helmet 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:golden_chestplate 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:golden_leggings 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

execute store result score @s temp run clear @s minecraft:golden_boots 0
execute unless score @s temp matches 1.. run scoreboard players set @s items_ready 0

# Ender Eyes
execute store result score @s temp run clear @s minecraft:ender_eye 0
execute unless score @s temp matches 12.. run scoreboard players set @s items_ready 0

# Beds
execute store result score @s temp run clear @s minecraft:white_bed 0
execute unless score @s temp matches 5.. run scoreboard players set @s items_ready 0

# Anchors
execute store result score @s temp run clear @s minecraft:respawn_anchor 0
execute unless score @s temp matches 3.. run scoreboard players set @s items_ready 0

# Remove everything if all requirements are met
execute if score @s items_ready matches 1 run function crafting:win