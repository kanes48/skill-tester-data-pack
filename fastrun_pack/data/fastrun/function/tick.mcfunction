execute as @a[x=-40,y=57,z=20,dx=20,dy=0,dz=100] run fill -40 57 20 -30 80 70 air replace blue_wool
execute as @a[x=-40,y=57,z=20,dx=20,dy=0,dz=100] run fill -29 57 20 -20 80 70 air replace blue_wool
execute as @a[x=-40,y=57,z=20,dx=20,dy=0,dz=100] run fill -40 57 71 -30 80 120 air replace blue_wool
execute as @a[x=-40,y=57,z=20,dx=20,dy=0,dz=100] run fill -29 57 71 -20 80 120 air replace blue_wool

execute as @a[x=-40,y=57,z=20,dx=30,dy=0,dz=100] run function kit:give/fastrun

execute as @a[x=-40,y=57,z=20,dx=30,dy=0,dz=100] at @s run tp -24 61.5 27.5
