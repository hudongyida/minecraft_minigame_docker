# 실행 인자: 플레이어에게 공격받은 오토마톤 보스 엔티티
# 호출 함수: monsters:tech/monster_abilities_on_hit_by_player

execute as @s on attacker as @s[predicate=system:player] at @s if entity @e[type=iron_golem,tag=boss.automaton,distance=..12] run scoreboard players add @s bosses.automaton.pattern1.attack_count 1