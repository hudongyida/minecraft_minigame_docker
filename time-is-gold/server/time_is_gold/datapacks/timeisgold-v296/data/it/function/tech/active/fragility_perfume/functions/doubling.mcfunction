execute as @s run scoreboard players operation @s combat.fragility *= #2 scoreboardConstant
execute as @s run tag @s add item.fragility_perfume.doubled
execute as @s at @s run particle witch ~ ~ ~ 0 0 0 1 20 force
execute as @s at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 1 0
execute as @s run tag @s remove item.fragility_perfume.doubles