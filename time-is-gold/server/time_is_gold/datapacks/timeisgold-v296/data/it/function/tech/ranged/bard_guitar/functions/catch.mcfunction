scoreboard players add @s item.bard_guitar.success 1

# sound
execute as @s if score @s item.bard_guitar.sheet matches 1 run tag @s add item.bard_guitar.sheet-1
execute as @s if score @s item.bard_guitar.sheet matches 2 run tag @s add item.bard_guitar.sheet-2
execute as @s if score @s item.bard_guitar.sheet matches 3 run tag @s add item.bard_guitar.sheet-3

execute as @s[tag=item.bard_guitar.sheet-1] if score @s item.bard_guitar.success matches 1 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.7071 0
execute as @s[tag=item.bard_guitar.sheet-1] if score @s item.bard_guitar.success matches 2 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.8909 0
execute as @s[tag=item.bard_guitar.sheet-1] if score @s item.bard_guitar.success matches 3 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.0595 0
execute as @s[tag=item.bard_guitar.sheet-1] if score @s item.bard_guitar.success matches 4 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.4142 0

execute as @s[tag=item.bard_guitar.sheet-2] if score @s item.bard_guitar.success matches 1 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.5946 0
execute as @s[tag=item.bard_guitar.sheet-2] if score @s item.bard_guitar.success matches 2 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.7071 0
execute as @s[tag=item.bard_guitar.sheet-2] if score @s item.bard_guitar.success matches 3 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.8909 0
execute as @s[tag=item.bard_guitar.sheet-2] if score @s item.bard_guitar.success matches 4 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.1892 0

execute as @s[tag=item.bard_guitar.sheet-3] if score @s item.bard_guitar.success matches 1 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.7937 0
execute as @s[tag=item.bard_guitar.sheet-3] if score @s item.bard_guitar.success matches 2 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 0.9439 0
execute as @s[tag=item.bard_guitar.sheet-3] if score @s item.bard_guitar.success matches 3 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.1892 0
execute as @s[tag=item.bard_guitar.sheet-3] if score @s item.bard_guitar.success matches 4 at @s run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.4142 0

execute as @s[tag=item.bard_guitar.sheet-1] run tag @s remove item.bard_guitar.sheet-1
execute as @s[tag=item.bard_guitar.sheet-2] run tag @s remove item.bard_guitar.sheet-2
execute as @s[tag=item.bard_guitar.sheet-3] run tag @s remove item.bard_guitar.sheet-3

# particle
execute at @s run particle note ~ ~1 ~ .5 .5 .5 0.5 8 force