execute as @s run function it:tech/ranged/bard_guitar/functions/input

execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["item.bard_guitar.marker","note-1"]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["item.bard_guitar.marker","note-2"]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["item.bard_guitar.marker","note-3"]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["item.bard_guitar.marker","note-4"]}

execute at @s as @s store result score @n[type=marker, tag=item.bard_guitar.marker ,tag=note-1] item.bard_guitar.note run scoreboard players get @s item.bard_guitar.note-1
execute at @s as @s store result score @n[type=marker, tag=item.bard_guitar.marker ,tag=note-2] item.bard_guitar.note run scoreboard players get @s item.bard_guitar.note-2
execute at @s as @s store result score @n[type=marker, tag=item.bard_guitar.marker ,tag=note-3] item.bard_guitar.note run scoreboard players get @s item.bard_guitar.note-3
execute at @s as @s store result score @n[type=marker, tag=item.bard_guitar.marker ,tag=note-4] item.bard_guitar.note run scoreboard players get @s item.bard_guitar.note-4

execute as @s if score @s item.bard_guitar.success matches 1.. at @s run tag @n[type=marker, tag=item.bard_guitar.marker, tag=note-1] add item.bard_guitar.colored
execute as @s if score @s item.bard_guitar.success matches 2.. at @s run tag @n[type=marker, tag=item.bard_guitar.marker, tag=note-2] add item.bard_guitar.colored
execute as @s if score @s item.bard_guitar.success matches 3.. at @s run tag @n[type=marker, tag=item.bard_guitar.marker, tag=note-3] add item.bard_guitar.colored
execute as @s if score @s item.bard_guitar.success matches 4.. at @s run tag @n[type=marker, tag=item.bard_guitar.marker, tag=note-4] add item.bard_guitar.colored

execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=1}, distance=..1] run data modify entity @s CustomName set value {"text":"↑","color":"gray"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=2}, distance=..1] run data modify entity @s CustomName set value {"text":"←","color":"gray"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=3}, distance=..1] run data modify entity @s CustomName set value {"text":"↓","color":"gray"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=4}, distance=..1] run data modify entity @s CustomName set value {"text":"→","color":"gray"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=1}, distance=..1] if entity @s[tag=item.bard_guitar.colored] run data modify entity @s CustomName set value {"text":"↑","color":"green"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=2}, distance=..1] if entity @s[tag=item.bard_guitar.colored] run data modify entity @s CustomName set value {"text":"←","color":"green"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=3}, distance=..1] if entity @s[tag=item.bard_guitar.colored] run data modify entity @s CustomName set value {"text":"↓","color":"green"}
execute as @e[type=marker, tag=item.bard_guitar.marker, scores={item.bard_guitar.note=4}, distance=..1] if entity @s[tag=item.bard_guitar.colored] run data modify entity @s CustomName set value {"text":"→","color":"green"}

title @s actionbar [{"text":"🎼 ","color":"gold"},{"selector":"@n[type=marker, tag=item.bard_guitar.marker ,tag=note-1]"}," 𝄞 ",{"selector":"@n[type=marker, tag=item.bard_guitar.marker ,tag=note-2]"}," ♪ ",{"selector":"@n[type=marker, tag=item.bard_guitar.marker ,tag=note-3]"}," ♫ ",{"selector":"@n[type=marker, tag=item.bard_guitar.marker ,tag=note-4]"}," 🎶 "]

kill @e[type=marker, tag=item.bard_guitar.marker]