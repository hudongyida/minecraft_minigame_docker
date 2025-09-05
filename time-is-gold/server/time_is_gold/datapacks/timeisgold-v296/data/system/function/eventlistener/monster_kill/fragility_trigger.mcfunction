# 실행 인자: 몬스터 처치 이벤트를 **취약 데미지로** 활성화한 플레이어

execute store result score @s system.eventlistener.monster_kill.player_attack_check run data get storage timeisgold:function_api stack[-1].fragility_player_attack_check
execute store result score @s system.eventlistener.monster_kill.melee_check run data get storage timeisgold:function_api stack[-1].fragility_melee_check
execute store result score @s system.eventlistener.monster_kill.ranged_check run data get storage timeisgold:function_api stack[-1].fragility_ranged_check
execute store result score @s system.eventlistener.monster_kill.magic_check run data get storage timeisgold:function_api stack[-1].fragility_magic_check
scoreboard players set @s system.eventlistener.monster_kill.fragility_check 0
function system:eventlistener/monster_kill/call_trigger