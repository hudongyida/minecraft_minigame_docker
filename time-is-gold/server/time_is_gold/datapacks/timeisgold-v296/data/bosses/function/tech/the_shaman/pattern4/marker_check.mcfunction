execute as @s at @s if entity @e[type=marker,tag=bosses.the_shaman.pattern4.marker,distance=..4] run function bosses:tech/the_shaman/pattern4/pattern4_init

execute at @s run kill @n[type=marker,tag=bosses.the_shaman.pattern4.marker]
execute at @s run summon marker ~ ~ ~ {Tags:["bosses.the_shaman.pattern4.marker"]}
scoreboard players operation @s bosses.the_shaman.pattern4.marker_tick = #SYSTEM bosses.the_shaman.pattern4.marker_tick