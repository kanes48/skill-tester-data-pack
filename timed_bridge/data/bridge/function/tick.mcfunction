execute as @a[x=77,y=-64,z=55,dx=30,dy=126,dz=62] at @s run function bridge:reset

execute if score #found sandstone matches 0 run function bridge:scan_sandstone

execute as @a if score @s timer_running matches 0 if score #found sandstone matches 1 run function skilltester:timer/start {id:"bridge"}
