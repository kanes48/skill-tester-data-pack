scoreboard objectives add pvpbot_state dummy
scoreboard objectives add pvpbot_hp dummy

execute unless score #active pvpbot_state matches 0.. run scoreboard players set #active pvpbot_state 0

tellraw @a {"text":"[PvP Bot Arena] Loaded. Run /function pvpbot:start as a player to begin.","color":"gold"}