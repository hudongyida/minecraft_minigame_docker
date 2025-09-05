# 실행 인자: @a[advancements={system:eventlistener/monster_attack=true}]

scoreboard players reset @s system.eventlistener.monster_attack.player_attack_check
scoreboard players reset @s system.eventlistener.monster_attack.melee_check
scoreboard players reset @s system.eventlistener.monster_attack.ranged_check
scoreboard players reset @s system.eventlistener.monster_attack.magic_check
scoreboard players reset @s system.eventlistener.monster_attack.fragility_check

# Debug
#function it:tech/debug/hit_check_is_sans/debug_eventlistener

execute as @s[advancements={system:eventlistener/monster_attack={player_attack=true}}] run scoreboard players set @s system.eventlistener.monster_attack.player_attack_check 1
execute as @s[advancements={system:eventlistener/monster_attack={melee=true}}] run scoreboard players set @s system.eventlistener.monster_attack.melee_check 1
execute as @s[advancements={system:eventlistener/monster_attack={ranged=true}}] run scoreboard players set @s system.eventlistener.monster_attack.ranged_check 1
execute as @s[advancements={system:eventlistener/monster_attack={magic=true}}] run scoreboard players set @s system.eventlistener.monster_attack.magic_check 1
execute as @s[advancements={system:eventlistener/monster_attack={fragility=true}}] run scoreboard players set @s system.eventlistener.monster_attack.fragility_check 1

function system:eventlistener/monster_attack/find_entity
advancement revoke @s only system:eventlistener/monster_attack

data modify storage timeisgold:function_api stack append value {playerid:0, entityid:0}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s store result storage timeisgold:function_api stack[-1].entityid int 1 run scoreboard players get @s entityid
execute as @s at @s run function system:eventlistener/monster_attack/call_trigger with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

scoreboard players reset @s entityid
function system:eventlistener/monster_attack/reset_bits