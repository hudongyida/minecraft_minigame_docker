# 실행 인자: 사망한 오토마톤 엔티티

execute as @s run function bosses:tech/utils/bossbar/manager {id:0, function:"bosses:tech/utils/bossbar/remove"}
execute as @s run function bosses:tech/utils/bossbar/manager {id:1, function:"bosses:tech/utils/bossbar/remove"}
execute at @s as @n[type=marker,tag=boss.arena_center] at @s run function bosses:tech/automaton/set_reward
execute as @s on passengers run kill @s