# Remove any leftover wither from a previous run
kill @e[type=minecraft:wither,tag=wither_fight]

# Snapshot @p's death count and mark the fight as active
scoreboard players operation #start wither_death_start = @p wither_deaths
scoreboard players set #active wither_state 1

# Spawn the tagged fight wither
summon minecraft:wither 128 105 -55 {Tags:["wither_fight"]}

# Start the fight kit and timer
execute as @p run function kit:give/wither
