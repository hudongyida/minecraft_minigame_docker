# sound
execute as @s if score @s item.chronospark.harmony_charge matches 1..8 run playsound minecraft:entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.2 1.5 0
execute as @s if score @s item.chronospark.harmony_charge matches 1..8 run playsound minecraft:block.amethyst_block.resonate block @a ~ ~ ~ 1 0
execute as @s if score @s item.chronospark.harmony_charge matches 1..8 run playsound minecraft:block.amethyst_cluster.break block @s ~ ~ ~ 1 1.5

execute as @s if score @s item.chronospark.harmony_charge matches 1..2 at @s run playsound minecraft:block.bell.use block @a ~ ~ ~ 0.3 1.5 0
execute as @s if score @s item.chronospark.harmony_charge matches 3..4 at @s run playsound minecraft:block.bell.use block @a ~ ~ ~ 0.3 1 0
execute as @s if score @s item.chronospark.harmony_charge matches 5..6 at @s run playsound minecraft:block.bell.use block @a ~ ~ ~ 0.3 0.5 0
execute as @s if score @s item.chronospark.harmony_charge matches 7..8 at @s run playsound minecraft:block.bell.use block @a ~ ~ ~ 0.3 0 0