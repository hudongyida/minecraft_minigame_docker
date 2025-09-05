execute at @s run particle item{item:"magma_cream"} ~ ~ ~ 0 0 0 0.3 10 force
execute at @s run playsound entity.magma_cube.death hostile @a ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0 0
execute at @s run tp @s ~ ~-999 ~
execute at @s run kill @s