# 실행 인자: 데미지를 받을 대상(몬스터 등)
# $(playerid)   : 데미지를 주는 플레이어의 ID 스코어보드 값
# $(value)      : 데미지 값
# $(knockback)  : 데미지 넉백 여부 -> 0: 없음 / 1: 있음

$data modify storage timeisgold:function_api stack append value {playerid:$(playerid), value:$(value)}
$scoreboard players set @s combat.modified_damage.apply_kb $(knockback)

execute store result score @s combat.modified_damage.apply run data get storage timeisgold:function_api stack[-1].value 10.0

$scoreboard players operation @s combat.modified_damage.apply += @a[scores={playerid=$(playerid)},limit=1] combat.laser.damage_deltaX10
$scoreboard players operation @s combat.modified_damage.apply *= @a[scores={playerid=$(playerid)},limit=1] combat.laser.damage_multiplier
scoreboard players operation @s combat.modified_damage.apply /= #100 scoreboardConstant
$scoreboard players operation @s combat.modified_damage.apply *= @a[scores={playerid=$(playerid)},limit=1] combat.sink.total_multiplier
scoreboard players operation @s combat.modified_damage.apply /= #100 scoreboardConstant
execute if score @s combat.modified_damage.apply matches ..1 run scoreboard players set @s combat.modified_damage.apply 1

execute store result storage timeisgold:function_api stack[-1].value float 0.1 run scoreboard players get @s combat.modified_damage.apply
function system:combat/modified_damage/laser/damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]