execute on origin unless items entity @s container.* *[custom_data~{item:gunpowder}] run return fail
execute on origin run clear @s *[custom_data~{item:gunpowder}] 1
execute on origin at @s run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 0.5 1 0
execute on origin at @s anchored eyes positioned ^ ^ ^1 run particle lava ~ ~ ~ 0 0 0 1 2 force
execute as @s store result score @s item.explosive_bow.origin on origin run scoreboard players get @s playerid
tag @s add item.explosive_bow.arrow