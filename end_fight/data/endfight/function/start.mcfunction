# Kill potentially alive dragon
execute as @a at @s if dimension minecraft:the_end run kill @e[type=ender_dragon]

# Remove all end crystals
kill @e[type=end_crystal]

kill @e[type=item]

# Remove old block
execute as @a at @s if dimension minecraft:the_end run function endfight:clear

# Allow block breaking by the dragon
gamerule mob_griefing true

# Allow fall damage
gamerule fall_damage true

# Replace the end crystals
execute as @p run function endfight:endcrystal

# Give end kit
execute in minecraft:overworld as @p run function kit:give/end

# Start the end_fight timer
execute as @p run function skilltester:timer/start {id:"endfight"}

# Summon Dragon (front diag)
execute as @p run summon minecraft:ender_dragon 0.0 128 0.0 {DragonPhase:0b,Rotation:[22.5f,0f],Tags:["endfight_dragon"]}

# Reset death counter
scoreboard players set @p endfight_deaths 0

# Tag that the fight has started
tag @p add endfight_active

# Show bossbar to active players
bossbar set endfight:dragon players @a[tag=endfight_active]

# Make bossbar visible
bossbar set endfight:dragon visible true

# Reset bossbar health
bossbar set endfight:dragon value 200
