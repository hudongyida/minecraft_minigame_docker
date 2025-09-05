# 플레이어가 몬스터 공격 시 플레이어가 실행하는 함수.
# 실행 인자: 공격 이벤트를 활성화한 플레이어
# $(playerid)   - 플레이어의 playerid 스코어보드 값
# $(entityid)   - 공격받은 몬스터의 entityid 스코어보드 값

data modify storage timeisgold:function_api stack append value {player_attack_check:0, melee_check:0, ranged_check:0, magic_check:0, fragility_check:0}
execute as @s store result storage timeisgold:function_api stack[-1].player_attack_check int 1 run scoreboard players get @s system.eventlistener.monster_attack.player_attack_check
execute as @s store result storage timeisgold:function_api stack[-1].melee_check int 1 run scoreboard players get @s system.eventlistener.monster_attack.melee_check
execute as @s store result storage timeisgold:function_api stack[-1].ranged_check int 1 run scoreboard players get @s system.eventlistener.monster_attack.ranged_check
execute as @s store result storage timeisgold:function_api stack[-1].magic_check int 1 run scoreboard players get @s system.eventlistener.monster_attack.magic_check
execute as @s store result storage timeisgold:function_api stack[-1].fragility_check int 1 run scoreboard players get @s system.eventlistener.monster_attack.fragility_check

# 공격받은 몬스터 특수 능력 실행
$execute as @e[tag=monster,scores={entityid=$(entityid)},limit=1] run function monsters:tech/monster_abilities_on_hit_by_player

$execute as @s if score @s system.eventlistener.monster_attack.player_attack_check matches 1 at @s run function it:eventlistener/monster_attack/player_attack_trigger {playerid:$(playerid), entityid:$(entityid)}

execute as @s store result score @s system.eventlistener.monster_attack.player_attack_check run data get storage timeisgold:function_api stack[-1].player_attack_check
$execute as @s if score @s system.eventlistener.monster_attack.player_attack_check matches 1 at @s run function it:eventlistener/monster_attack/melee_trigger {playerid:$(playerid), entityid:$(entityid)}

execute as @s store result score @s system.eventlistener.monster_attack.melee_check run data get storage timeisgold:function_api stack[-1].melee_check
$execute as @s if score @s system.eventlistener.monster_attack.melee_check matches 1 at @s run function it:eventlistener/monster_attack/melee_trigger {playerid:$(playerid), entityid:$(entityid)}

execute as @s store result score @s system.eventlistener.monster_attack.ranged_check run data get storage timeisgold:function_api stack[-1].ranged_check
$execute as @s if score @s system.eventlistener.monster_attack.ranged_check matches 1 at @s run function it:eventlistener/monster_attack/ranged_trigger {playerid:$(playerid), entityid:$(entityid)}

execute as @s store result score @s system.eventlistener.monster_attack.magic_check run data get storage timeisgold:function_api stack[-1].magic_check
$execute as @s if score @s system.eventlistener.monster_attack.magic_check matches 1 at @s run function it:eventlistener/monster_attack/magic_trigger {playerid:$(playerid), entityid:$(entityid)}

execute as @s store result score @s system.eventlistener.monster_attack.fragility_check run data get storage timeisgold:function_api stack[-1].fragility_check
$execute unless score @s system.eventlistener.monster_attack.fragility_check matches 1 if entity @e[tag=monster,scores={entityid=$(entityid),combat.fragility=1..},limit=1] run function system:eventlistener/monster_attack/fragility_operation
$execute unless score @s system.eventlistener.monster_attack.fragility_check matches 1 as @e[tag=monster,scores={entityid=$(entityid),combat.fragility=1..},limit=1] at @s run function system:combat/fragility_damage/init {playerid:$(playerid)}

data remove storage timeisgold:function_api stack[-1]