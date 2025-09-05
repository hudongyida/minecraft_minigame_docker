scoreboard players set @s monsters.floor2.uu_weaponsmith.arrows 4
data modify storage timeisgold:function_api stack append value {motion_x:0, motion_y:0, motion_z:0, origin:0}
execute store result storage timeisgold:function_api stack[-1].motion_x double 100 run data get entity @s Motion[0]
execute store result storage timeisgold:function_api stack[-1].motion_y double 100 run data get entity @s Motion[1]
execute store result storage timeisgold:function_api stack[-1].motion_z double 100 run data get entity @s Motion[2]
data modify storage timeisgold:function_api stack[-1].origin set from entity @s Owner

function monsters:tech/floor2/uu_weaponsmith/multiply with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
kill @s
