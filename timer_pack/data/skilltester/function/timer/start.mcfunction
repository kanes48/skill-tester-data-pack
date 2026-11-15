# ==========================================
# START TIMER
# Argument: id
# ==========================================

# Remove the active tag from the previous timer
tag @s remove timer_active

# Assign the new timer ID
$tag @s add timer_id_$(id)

# Mark this timer as active
tag @s add timer_active

# Reset elapsed time
scoreboard players set @s timer_ticks 0

# Reset display values
scoreboard players set @s timer_seconds 0
scoreboard players set @s timer_millis 0

# Start timer
scoreboard players set @s timer_running 1

# Confirmation
$tellraw @s {"text":"Started timer: $(id)","color":"green"}