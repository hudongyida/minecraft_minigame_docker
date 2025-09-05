execute as @s if score @s bosses.the_shaman.pattern4.cooldown matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern4.cooldown 1
execute as @s unless score @s bosses.the_shaman.pattern4.cooldown matches 1.. at @s if entity @p[predicate=system:player,distance=..50] run function bosses:tech/the_shaman/pattern4/pattern4_init

execute as @s if score @s bosses.the_shaman.pattern4.marker_tick matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern4.marker_tick 1
execute as @s unless score @s bosses.the_shaman.pattern4.marker_tick matches 1.. at @s if entity @p[predicate=system:player,distance=..50] run function bosses:tech/the_shaman/pattern4/marker_check