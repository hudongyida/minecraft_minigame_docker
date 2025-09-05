# 몬스터 처치 시 플레이어 팀에게 처치 보상을 부여하는 함수.
# 실행 인자: 몬스터를 처치한 플레이어
# $(value)  - 보상으로 지급할 시간 값

$function system:time/reward/init {value:$(value)}
tag @s add monsters.utils.reward.origin

# 모든 팀원에게 시간 보상 지급
$scoreboard players set @s monsters.utils.reward.value $(value)
execute store result score @s monsters.utils.reward.scale run function monsters:tech/global/utils/reward/get_scale
scoreboard players operation @s monsters.utils.reward.value *= @s monsters.utils.reward.scale
scoreboard players operation @s monsters.utils.reward.value /= #100 scoreboardConstant

data modify storage timeisgold:function_api stack append value {value:0}
execute store result storage timeisgold:function_api stack[-1].value int 1 run scoreboard players get @s monsters.utils.reward.value
execute as @a[predicate=system:player,tag=!monsters.utils.reward.origin] run function system:time/reward/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
execute as @a[predicate=system:player,tag=!monsters.utils.reward.origin] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5

tag @s remove monsters.utils.reward.origin