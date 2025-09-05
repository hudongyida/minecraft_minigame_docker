execute as @s if score @s combat.sink matches 1.. run scoreboard players set @s item.cherry_branch.fragility_tick 100
execute as @s if score @s combat.sink matches 1.. run scoreboard players remove @s combat.sink 5
scoreboard players operation @s combat.sink > #0 scoreboardConstant

# SFX
execute as @s at @s run playsound block.cherry_leaves.place block @a ~ ~ ~ 0.5 0.5

# VFX
execute as @s at @s run particle minecraft:cherry_leaves ~ ~ ~ 0.25 0.5 0.25 10 33 force