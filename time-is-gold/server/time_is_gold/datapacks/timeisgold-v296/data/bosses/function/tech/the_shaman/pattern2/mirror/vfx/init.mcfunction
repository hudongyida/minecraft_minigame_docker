scoreboard players add @s bosses.the_shaman.pattern2.mirror.animation_tick 1
scoreboard players operation @s bosses.the_shaman.pattern2.mirror.animation_tick %= #100 scoreboardConstant

execute as @s at @s run particle minecraft:landing_obsidian_tear ~ ~ ~ 0.1 0.1 0.1 0.01 0
$execute as @s at @s run particle minecraft:trail{color:[0.5,0.1,0.5],duration:30,target:[$(x)d, $(y)d, $(z)d]} ~ ~ ~ 0.5 0.5 0.5 1 1

data modify storage timeisgold:function_api stack append value {index:0, dy:0d}
execute store result storage timeisgold:function_api stack[-1].index int 1 run scoreboard players get @s bosses.the_shaman.pattern2.mirror.animation_tick
function bosses:tech/the_shaman/pattern2/mirror/macro/search_table with storage timeisgold:function_api stack[-1]
function bosses:tech/the_shaman/pattern2/mirror/vfx/anim with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

execute facing entity @p eyes run rotate @s ~ 0