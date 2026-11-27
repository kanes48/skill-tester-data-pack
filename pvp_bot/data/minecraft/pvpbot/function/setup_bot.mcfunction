# Health: 100 HP
attribute @s minecraft:max_health base set 100
data merge entity @s {Health:100.0f}

# Attack damage: 12
attribute @s minecraft:attack_damage base set 12

# Movement speed
attribute @s minecraft:movement_speed base set 0.38

# Detection range
attribute @s minecraft:follow_range base set 48

# Defensive stats
attribute @s minecraft:armor base set 16
attribute @s minecraft:armor_toughness base set 8
attribute @s minecraft:knockback_resistance base set 0.5

# Weapon
item replace entity @s weapon.mainhand with minecraft:diamond_sword

# Armor
item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s armor.chest with minecraft:diamond_chestplate
item replace entity @s armor.legs with minecraft:diamond_leggings
item replace entity @s armor.feet with minecraft:diamond_boots