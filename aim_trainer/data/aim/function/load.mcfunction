# Create the scoreboards
scoreboard objectives add aim_score dummy
scoreboard objectives add aim_timer dummy
scoreboard objectives add aim_data dummy

# Initialize game state
scoreboard players set #running aim_data 0
scoreboard players set #ticks aim_data 0
scoreboard players set #time aim_timer 0

# Create the bossbar
bossbar add aim:timer {"text":"Time Remaining","color":"yellow"}
bossbar set aim:timer max 30
bossbar set aim:timer visible false