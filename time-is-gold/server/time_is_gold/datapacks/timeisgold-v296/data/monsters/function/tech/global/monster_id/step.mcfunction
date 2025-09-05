# 실행 인자: @e[tag=monster]

execute as @s[tag=!monster.ally] run team join monsters @s
execute as @s[tag=!entityidset] run function monsters:tech/global/monster_id/assign