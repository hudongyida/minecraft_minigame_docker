# 실행 인자: @e[tag=monster]

execute as @s[tag=!monster.ally] run team join monsters @s
execute as @s[tag=!entityidset] if entity @s run function monsters:tech/global/monster_id/assign

# 몬스터 효과 VFX 실행
execute at @s run function system:vfx/tick_monster