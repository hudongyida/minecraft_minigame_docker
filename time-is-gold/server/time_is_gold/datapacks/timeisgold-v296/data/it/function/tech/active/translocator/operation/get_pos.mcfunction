# 실행 인자: 아이템을 사용한 플레이어
# $(playeruuid) - 아이템을 사용한 플레이어의 UUID Token
# $(targetuuid) - 텔레포트할 플레이어의 UUID Token

$execute store result score @s item.translocator.pos.x run data get entity $(targetuuid) Pos[0] 100
$execute store result score @s item.translocator.pos.y run data get entity $(targetuuid) Pos[1] 100
$execute store result score @s item.translocator.pos.z run data get entity $(targetuuid) Pos[2] 100

execute store result score @s item.translocator.randomizer run random value -10..10
execute if score @s item.translocator.randomizer matches 0 run scoreboard players set @s item.translocator.randomizer 5
scoreboard players operation @s item.translocator.pos.x += @s item.translocator.randomizer

execute store result score @s item.translocator.randomizer run random value -10..10
execute if score @s item.translocator.randomizer matches 0 run scoreboard players set @s item.translocator.randomizer -5
scoreboard players operation @s item.translocator.pos.z += @s item.translocator.randomizer

execute store result storage timeisgold:function_api stack[-1].x double 0.01 run scoreboard players get @s item.translocator.pos.x
execute store result storage timeisgold:function_api stack[-1].y double 0.01 run scoreboard players get @s item.translocator.pos.y
execute store result storage timeisgold:function_api stack[-1].z double 0.01 run scoreboard players get @s item.translocator.pos.z

execute at @s run function it:tech/active/translocator/operation/teleport with storage timeisgold:function_api stack[-1]