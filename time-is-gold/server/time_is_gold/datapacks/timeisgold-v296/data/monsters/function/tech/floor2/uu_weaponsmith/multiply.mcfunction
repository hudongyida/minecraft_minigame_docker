$scoreboard players set @s monsters.floor2.uu_weaponsmith.motion_x $(motion_x)
$scoreboard players set @s monsters.floor2.uu_weaponsmith.motion_y $(motion_y)
$scoreboard players set @s monsters.floor2.uu_weaponsmith.motion_z $(motion_z)

$data modify storage timeisgold:function_api stack append value {motion_x:0,motion_y:0,motion_z:0,origin:$(origin)}
execute store result score @s monsters.floor2.uu_weaponsmith.random_value run random value -50..50
execute store result storage timeisgold:function_api stack[-1].motion_x double 0.005 run scoreboard players operation @s monsters.floor2.uu_weaponsmith.motion_x += @s monsters.floor2.uu_weaponsmith.random_value
execute store result score @s monsters.floor2.uu_weaponsmith.random_value run random value 0..20
execute store result storage timeisgold:function_api stack[-1].motion_y double 0.005 run scoreboard players operation @s monsters.floor2.uu_weaponsmith.motion_y += @s monsters.floor2.uu_weaponsmith.random_value
#execute store result score @s monsters.floor2.uu_weaponsmith.random_value run random value -10..10
execute store result storage timeisgold:function_api stack[-1].motion_z double 0.005 run scoreboard players operation @s monsters.floor2.uu_weaponsmith.motion_z += @s monsters.floor2.uu_weaponsmith.random_value

function monsters:tech/floor2/uu_weaponsmith/summon with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
scoreboard players remove @s monsters.floor2.uu_weaponsmith.arrows 1

execute if score @s monsters.floor2.uu_weaponsmith.arrows matches 1.. run function monsters:tech/floor2/uu_weaponsmith/multiply with storage timeisgold:function_api stack[-1]