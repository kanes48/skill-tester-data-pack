
# ==========================================
# CONVERT TIMER TICKS
#
# Input: #current timer_work
# Output:
#   #display_seconds timer_work
#   #display_millis timer_work
# ==========================================

# Calculate whole seconds.
scoreboard players operation #display_seconds timer_work = #current timer_work
scoreboard players operation #display_seconds timer_work /= #twenty timer_constants

# Calculate remaining ticks.
scoreboard players operation #display_millis timer_work = #current timer_work
scoreboard players operation #display_millis timer_work %= #twenty timer_constants

# Convert remaining ticks to milliseconds.
scoreboard players operation #display_millis timer_work *= #fifty timer_constants
