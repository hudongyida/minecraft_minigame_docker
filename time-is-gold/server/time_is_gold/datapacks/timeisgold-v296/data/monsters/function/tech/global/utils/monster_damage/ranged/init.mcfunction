# 몬스터 공격메 맞은 엔티티에게 데미지를 가하는 함수.
# 실행 인자: 몬스터 공격에 맞은 엔티티
# $(value)          - 공격 데미지
# $(monsteruuid)    - 공격한 몬스터의 UUID Token

$execute as @s run data modify storage timeisgold:function_api stack append value {value:$(value), monsteruuid:"$(monsteruuid)"}
$execute as $(monsteruuid) if entity @s[tag=monster.warped] run function monsters:tech/global/utils/monster_damage/warped_modification
$execute as $(monsteruuid) run function monsters:tech/global/utils/monster_damage/sink_modification
function monsters:tech/global/utils/monster_damage/ranged/damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]