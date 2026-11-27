
# STOP TIMER
# Argument: id

# Validate timer state
$execute unless entity @s[tag=timer_active,tag=timer_id_$(id)] run tellraw @s {"text":"This timer is not currently active!","color":"red"}
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] unless score @s timer_running matches 1 run tellraw @s {"text":"No timer is running!","color":"red"}

# Initialize temporary values
scoreboard players set #new_best timer_work 0

# Initialize missing personal best
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 unless data storage skilltester:timers best.$(id) run data modify storage skilltester:timers best.$(id) set value 2147483647

# Get current time
execute if entity @s[tag=timer_active] if score @s timer_running matches 1 run scoreboard players operation #current timer_work = @s timer_ticks

# Load personal best
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 store result score #best timer_work run data get storage skilltester:timers best.$(id) 1

# Check for new personal best
execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #current timer_work < #best timer_work run scoreboard players set #new_best timer_work 1

# Save new personal best
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 if score #new_best timer_work matches 1 store result storage skilltester:timers best.$(id) int 1 run scoreboard players get @s timer_ticks

# Display personal best
execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #new_best timer_work matches 1 run function skilltester:timer/convert

execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #new_best timer_work matches 1 run title @s times 10 60 20

execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #new_best timer_work matches 1 run title @s title {"text":"NEW BEST!","color":"blue","bold":true}

execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #new_best timer_work matches 1 if score #display_millis timer_work matches 0 run title @s subtitle [{"text":"Best time: ","color":"white"},{"score":{"name":"#display_seconds","objective":"timer_work"},"color":"yellow"},{"text":".000 s","color":"yellow"}]

execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #new_best timer_work matches 1 if score #display_millis timer_work matches 50 run title @s subtitle [{"text":"Best time: ","color":"white"},{"score":{"name":"#display_seconds","objective":"timer_work"},"color":"yellow"},{"text":".050 s","color":"yellow"}]

execute if entity @s[tag=timer_active] if score @s timer_running matches 1 if score #new_best timer_work matches 1 if score #display_millis timer_work matches 100..950 run title @s subtitle [{"text":"Best time: ","color":"white"},{"score":{"name":"#display_seconds","objective":"timer_work"},"color":"yellow"},{"text":"."},{"score":{"name":"#display_millis","objective":"timer_work"},"color":"yellow"},{"text":" s","color":"yellow"}]

# Finish timer - Convert final time
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 run function skilltester:timer/convert

# Display final time (000 milliseconds)
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 if score #display_millis timer_work matches 0 run tellraw @s [{"text":"Challenge completed - Final Time: ","color":"green"},{"score":{"name":"#display_seconds","objective":"timer_work"},"color":"yellow"},{"text":".000 s","color":"yellow"}]

# Display final time (050 milliseconds)
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 if score #display_millis timer_work matches 50 run tellraw @s [{"text":"Challenge completed - Final Time: ","color":"green"},{"score":{"name":"#display_seconds","objective":"timer_work"},"color":"yellow"},{"text":".050 s","color":"yellow"}]

# Display final time (100-950 milliseconds)
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] if score @s timer_running matches 1 if score #display_millis timer_work matches 100..950 run tellraw @s [{"text":"Challenge completed - Final Time: ","color":"green"},{"score":{"name":"#display_seconds","objective":"timer_work"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"#display_millis","objective":"timer_work"},"color":"yellow"},{"text":" s","color":"yellow"}]

# Stop timer
$execute if entity @s[tag=timer_active,tag=timer_id_$(id)] run scoreboard players set @s timer_running 0

tag @s remove timer_active
$tag @s remove timer_id_$(id)