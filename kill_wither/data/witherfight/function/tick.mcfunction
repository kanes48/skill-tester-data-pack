# Loss check first, so dying on the same tick as the wither dies counts as a loss
execute if score #active wither_state matches 1 as @p if score @s wither_deaths > #start wither_death_start run function witherfight:lose

# Win check: the tagged fight wither no longer exists
execute if score #active wither_state matches 1 unless entity @e[type=minecraft:wither,tag=wither_fight] run function witherfight:win
