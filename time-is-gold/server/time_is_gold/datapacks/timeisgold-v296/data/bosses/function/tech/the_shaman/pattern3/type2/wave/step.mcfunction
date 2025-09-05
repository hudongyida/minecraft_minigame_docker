execute at @s unless block ~ ~ ~ #it:air run kill @s
execute at @s if block ~ ~-1 ~ #it:air run kill @s
execute at @s run function bosses:tech/the_shaman/pattern3/type2/wave/display/init
execute at @s run function bosses:tech/the_shaman/pattern3/type2/wave/apply_damage with entity @s data

execute at @s run tp @s ^ ^ ^0.5