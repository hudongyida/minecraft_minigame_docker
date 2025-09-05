# 실행 인자: 사망한 제사장 보스 엔티티

execute as @s run function bosses:tech/utils/bossbar/manager {id:0, function:"bosses:tech/utils/bossbar/remove"}
execute at @s as @n[type=marker,tag=boss.arena_center] at @s run function bosses:tech/the_shaman/set_reward

execute as @s on passengers run kill @s