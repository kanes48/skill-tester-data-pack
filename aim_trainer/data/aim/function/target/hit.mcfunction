# Prevent multiple hits from counting simultaneously.
execute unless score #running aim_data matches 1 run return 0

# Increase the player's score.
scoreboard players add @s aim_score 1

# Kill the arrows already stuck in the wall to prevent multi activation
kill @e[type=minecraft:arrow]

# Clear the player's inventory
clear @s
# Give the player a loaded crossbow (hit reward)
give @a minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
give @a minecraft:arrow 64

# Play a hit sound.
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Move the target.
function aim:target/spawn