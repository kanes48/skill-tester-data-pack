# ==========================================
# TIMER INITIALIZATION
# ==========================================

# Main timer objectives
scoreboard objectives add timer_ticks dummy
scoreboard objectives add timer_running dummy

# Time display objectives
scoreboard objectives add timer_seconds dummy
scoreboard objectives add timer_millis dummy

# Personal best comparison
scoreboard objectives add timer_work dummy

# Constants
scoreboard objectives add timer_constants dummy

scoreboard players set #twenty timer_constants 20
scoreboard players set #fifty timer_constants 50

# Initialize persistent personal best storage
execute unless data storage skilltester:timers best run data modify storage skilltester:timers best set value {}