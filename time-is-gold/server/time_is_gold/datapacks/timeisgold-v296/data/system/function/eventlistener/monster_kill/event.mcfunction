#execute as @s[advancements={system:eventlistener/monster_kill/monster_kill={player_attack=true}}] run say player attack kill
#execute as @s[advancements={system:eventlistener/monster_kill/monster_kill={melee=true}}] run say melee kill
#execute as @s[advancements={system:eventlistener/monster_kill/monster_kill={ranged=true}}] run say ranged kill
#execute as @s[advancements={system:eventlistener/monster_kill/monster_kill={magic=true}}] run say magic kill
#execute as @s[advancements={system:eventlistener/monster_kill/monster_kill={fragility=true}}] run say fragility kill
#execute as @s[advancements={system:eventlistener/monster_kill/monster_kill={warped_kill=true}}] run say warped kill

# Summary 데이터 기록
scoreboard players add @s system.gamemanager.summary.monsters_killed 1

scoreboard players reset @s system.eventlistener.monster_kill.player_attack_check
scoreboard players reset @s system.eventlistener.monster_kill.melee_check
scoreboard players reset @s system.eventlistener.monster_kill.ranged_check
scoreboard players reset @s system.eventlistener.monster_kill.magic_check
scoreboard players reset @s system.eventlistener.monster_kill.fragility_check

execute as @s[advancements={system:eventlistener/monster_kill={player_attack=true}}] run scoreboard players set @s system.eventlistener.monster_kill.player_attack_check 1
execute as @s[advancements={system:eventlistener/monster_kill={melee=true}}] run scoreboard players set @s system.eventlistener.monster_kill.melee_check 1
execute as @s[advancements={system:eventlistener/monster_kill={ranged=true}}] run scoreboard players set @s system.eventlistener.monster_kill.ranged_check 1
execute as @s[advancements={system:eventlistener/monster_kill={magic=true}}] run scoreboard players set @s system.eventlistener.monster_kill.magic_check 1
execute as @s[advancements={system:eventlistener/monster_kill={fragility=true}}] run scoreboard players set @s system.eventlistener.monster_kill.fragility_check 1

function system:eventlistener/monster_kill/find_entity
advancement revoke @s only system:eventlistener/monster_kill

execute at @s run function system:eventlistener/monster_kill/call_trigger

scoreboard players reset @s entityid
function system:eventlistener/monster_kill/reset_bits