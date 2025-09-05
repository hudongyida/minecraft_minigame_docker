# 플레이어가 몬스터 처치 시 플레이어가 실행하는 함수.
# 실행 인자: 몬스터 처치 이벤트를 활성화한 플레이어

data modify storage timeisgold:function_api stack append value {player_attack_check:0, melee_check:0, ranged_check:0, magic_check:0, fragility_check:0, warped_kill_check:0, fragility_player_attack_check:0, fragility_melee_check:0, fragility_ranged_check:0, fragility_magic_check:0}
execute store result storage timeisgold:function_api stack[-1].player_attack_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.player_attack_check
execute store result storage timeisgold:function_api stack[-1].melee_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.melee_check
execute store result storage timeisgold:function_api stack[-1].ranged_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.ranged_check
execute store result storage timeisgold:function_api stack[-1].magic_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.magic_check
execute store result storage timeisgold:function_api stack[-1].fragility_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.fragility_check
#execute as @s store result storage timeisgold:function_api stack[-1].warped_kill_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.warped_kill_check
execute store result storage timeisgold:function_api stack[-1].fragility_player_attack_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.fragility.player_attack_check
execute store result storage timeisgold:function_api stack[-1].fragility_melee_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.fragility.melee_check
execute store result storage timeisgold:function_api stack[-1].fragility_ranged_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.fragility.ranged_check
execute store result storage timeisgold:function_api stack[-1].fragility_magic_check int 1 run scoreboard players get @s system.eventlistener.monster_kill.fragility.magic_check

# 처치당한 몬스터 탐색
function system:eventlistener/monster_kill/killed_entity/search

execute if score @s system.eventlistener.monster_kill.player_attack_check matches 1 at @s run function it:eventlistener/monster_kill/player_attack_trigger

execute store result score @s system.eventlistener.monster_kill.player_attack_check run data get storage timeisgold:function_api stack[-1].player_attack_check
execute if score @s system.eventlistener.monster_kill.player_attack_check matches 1 at @s run function it:eventlistener/monster_kill/melee_trigger
execute if score @s system.eventlistener.monster_kill.player_attack_check matches 1 at @s run function it:eventlistener/monster_kill/all_types_trigger

execute store result score @s system.eventlistener.monster_kill.melee_check run data get storage timeisgold:function_api stack[-1].melee_check
execute if score @s system.eventlistener.monster_kill.melee_check matches 1 at @s run function it:eventlistener/monster_kill/melee_trigger
execute if score @s system.eventlistener.monster_kill.melee_check matches 1 at @s run function it:eventlistener/monster_kill/all_types_trigger

execute store result score @s system.eventlistener.monster_kill.ranged_check run data get storage timeisgold:function_api stack[-1].ranged_check
execute if score @s system.eventlistener.monster_kill.ranged_check matches 1 at @s run function it:eventlistener/monster_kill/ranged_trigger
execute if score @s system.eventlistener.monster_kill.ranged_check matches 1 at @s run function it:eventlistener/monster_kill/all_types_trigger

execute store result score @s system.eventlistener.monster_kill.magic_check run data get storage timeisgold:function_api stack[-1].magic_check
execute if score @s system.eventlistener.monster_kill.magic_check matches 1 at @s run function it:eventlistener/monster_kill/magic_trigger
execute if score @s system.eventlistener.monster_kill.magic_check matches 1 at @s run function it:eventlistener/monster_kill/all_types_trigger

execute store result score @s system.eventlistener.monster_kill.fragility_check run data get storage timeisgold:function_api stack[-1].fragility_check
execute if score @s system.eventlistener.monster_kill.fragility_check matches 1 run function it:eventlistener/monster_kill/all_types_trigger
execute if score @s system.eventlistener.monster_kill.fragility_check matches 1 run function system:eventlistener/monster_kill/fragility_trigger

data remove storage timeisgold:function_api stack[-1]