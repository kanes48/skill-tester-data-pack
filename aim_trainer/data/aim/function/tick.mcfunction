# Run the game timer for the active player.
execute as @a[tag=aim_player] at @s run function aim:game/timer

# Check whether the active target has been hit.
execute as @a[tag=aim_player] at @s run function aim:target/check