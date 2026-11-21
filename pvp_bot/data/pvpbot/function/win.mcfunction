# End fight
scoreboard players set #active pvpbot_state 0

# Victory title
title @a[tag=pvpbot.player] times 10 60 20
title @a[tag=pvpbot.player] title {"text":"VICTORY!","color":"gold","bold":true}
title @a[tag=pvpbot.player] subtitle {"text":"You defeated the PvP Bot!","color":"green"}

# Victory sound
playsound minecraft:ui.toast.challenge_complete master @a[tag=pvpbot.player] ~ ~ ~ 1 1

execute as @p run function skilltester:timer/stop {id:"pvpBot"}

clear @p

effect clear @p

# Heal player
effect give @p minecraft:saturation 2 20
effect give @p minecraft:regeneration 2 20

tp @p 42 58 -8

# Show bossbar
bossbar set pvpbot:health visible false

# Remove player tag
tag @a[tag=pvpbot.player] remove pvpbot.player