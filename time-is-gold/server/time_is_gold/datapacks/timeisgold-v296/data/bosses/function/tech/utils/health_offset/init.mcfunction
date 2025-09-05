# 플레이어 인원수에 따른 보스의 채력을 보정하는 함수
# 인자: 실행할 보스(@s)

# offset : 각 플레이어 당 추가될 보스의 추가 채력

$scoreboard players set @s bosses.utils.health_offset.value $(offset)
scoreboard players operation @s bosses.utils.health_offset.max = #SYSTEM system.gamemanager.count.player_max
scoreboard players operation @s bosses.utils.health_offset.max -= #1 scoreboardConstant

execute unless score @s bosses.utils.health_offset.max matches 0.. run return fail

scoreboard players operation @s bosses.utils.health_offset.value *= #SYSTEM system.gamemanager.count.player_max

execute store result score @s bosses.utils.health_offset.health run attribute @s minecraft:max_health get 1
scoreboard players operation @s bosses.utils.health_offset.health += @s bosses.utils.health_offset.value

data modify storage timeisgold:function_api stack append value {health:0}
execute store result storage timeisgold:function_api stack[-1].health float 1 run scoreboard players get @s bosses.utils.health_offset.health
function bosses:tech/utils/health_offset/modify with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]