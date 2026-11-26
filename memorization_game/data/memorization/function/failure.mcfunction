tellraw @a {"text":"Incorrect pattern. Generate a new pattern by pressing start.","color":"red"}
scoreboard players set @a timer_running 0

fill 66 79 68 52 92 82 air replace minecraft:red_concrete
fill 66 79 68 52 92 82 air replace minecraft:blue_concrete
fill 66 79 68 52 92 82 air replace minecraft:green_concrete

# Safety remove
fill 57 78 77 61 78 73 air

# Remove command block
setblock 59 79 71 air

