scoreboard players set @s item.bard_guitar.playing 40

execute as @s store result score @s item.bard_guitar.note-1 run random value 1..4
execute as @s store result score @s item.bard_guitar.note-2 run random value 1..4
execute as @s store result score @s item.bard_guitar.note-3 run random value 1..4
execute as @s store result score @s item.bard_guitar.note-4 run random value 1..4

execute as @s store result score @s item.bard_guitar.sheet run random value 1..3

# FX
execute at @s run particle minecraft:note ~ ~2.1 ~ 0 0 0 0 2 force

execute at @s run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.1892 0
execute at @s run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.4983 0