# 실행 인자: 오토마톤 보스 엔티티

execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] unless data entity @s data.targetuuidlist[0] at @s run data modify entity @s data.targetuuidlist set from entity @p[predicate=system:player,distance=..50] UUID
execute at @s if entity @p[scores={bosses.automaton.pattern1.attack_count=8..},distance=..12] on passengers run data modify entity @s data.targetuuidlist set from entity @p[scores={bosses.automaton.pattern1.attack_count=8..},distance=..12] UUID
execute at @s if entity @p[scores={bosses.automaton.pattern1.attack_count=8..},distance=..12] run scoreboard players set @a bosses.automaton.pattern1.attack_count 0
execute as @a[scores={bosses.automaton.pattern1.attack_count=1..}] at @s unless entity @e[type=iron_golem,tag=boss.automaton,distance=..12] run scoreboard players set @s bosses.automaton.pattern1.attack_count 0

# 보스바 관리
execute as @s run function bosses:tech/utils/bossbar/manager {function:"bosses:tech/utils/bossbar/display_hp", id:0}

# 변경된 타겟 UUID 전파
execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] run function bosses:tech/automaton/pattern1/targeting_init with entity @s data