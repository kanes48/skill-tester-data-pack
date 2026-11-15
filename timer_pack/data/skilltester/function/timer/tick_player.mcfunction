
# ==========================================
# TIMER CALCULATION
# ==========================================

# Add one tick
scoreboard players add @s timer_ticks 1

# Copy ticks into working score
scoreboard players operation #current timer_work = @s timer_ticks

# Convert ticks into seconds and milliseconds
function skilltester:timer/convert

# Copy results to player scores
scoreboard players operation @s timer_seconds = #display_seconds timer_work
scoreboard players operation @s timer_millis = #display_millis timer_work


# ==========================================
# ACTIONBAR DISPLAY
# Format: Time: 12.350 s
# ==========================================

# 000 milliseconds
execute if score @s timer_millis matches 0 run title @s actionbar [{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"timer_seconds"},"color":"yellow"},{"text":".000 s","color":"yellow"}]

# 050 milliseconds
execute if score @s timer_millis matches 50 run title @s actionbar [{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"timer_seconds"},"color":"yellow"},{"text":".050 s","color":"yellow"}]

# 100-950 milliseconds
execute if score @s timer_millis matches 100..950 run title @s actionbar [{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"timer_seconds"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"timer_millis"},"color":"yellow"},{"text":" s","color":"gold"}]
