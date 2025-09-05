# 스코어보드 관리
execute as @s at @s unless score @s bosses.automaton.pattern3.tick_a matches 0.. run scoreboard players set @s bosses.automaton.pattern3.tick_a 0
execute as @s at @s unless score @s bosses.automaton.pattern3.tick_b matches 0.. run scoreboard players set @s bosses.automaton.pattern3.tick_b 0
execute as @s at @s if score @s bosses.automaton.pattern3.cooldown matches 1.. run scoreboard players remove @s bosses.automaton.pattern3.cooldown 1

execute as @s at @s run function bosses:tech/automaton/pattern3/anger_a
execute as @s at @s run function bosses:tech/automaton/pattern3/anger_b
execute as @s at @s run scoreboard players set @s bosses.automaton.pattern3.total_anger 0
execute as @s at @s run scoreboard players set @s bosses.automaton.pattern3.max_anger 0
execute as @s at @s as @a[predicate=system:player,distance=..100] at @s run scoreboard players operation @n[type=iron_golem,tag=boss.automaton] bosses.automaton.pattern3.total_anger += @s bosses.automaton.pattern3.anger

# 3번 패턴 발동 (전역 쿨다운에 영향을 받지 않음)
execute as @s at @s unless score @s bosses.automaton.pattern3.cooldown matches 1.. if score @s bosses.automaton.pattern3.total_anger matches 100.. if entity @a[predicate=system:player,distance=..100] run function bosses:tech/automaton/pattern3/pattern3_init

# 분노 수치 인디케이터
execute as @s at @s if score @s bosses.automaton.pattern3.total_anger matches 0..25 run particle dust{color:[0.973, 0.957, 0.004], scale:1} ~ ~1.5 ~ 0.33 0.33 0.33 0 3
execute as @s at @s if score @s bosses.automaton.pattern3.total_anger matches 26..49 run particle dust{color:[0.973, 0.796, 0.004], scale:1} ~ ~1.5 ~ 0.33 0.5 0.33 0 3
execute as @s at @s if score @s bosses.automaton.pattern3.total_anger matches 50..75 run particle dust{color:[0.973, 0.439, 0.004], scale:1} ~ ~1.5 ~ 0.33 0.5 0.33 0 3
execute as @s at @s if score @s bosses.automaton.pattern3.total_anger matches 75.. run particle dust{color:[1.000, 0.235, 0.000], scale:1} ~ ~1.5 ~ 0.33 0.33 0.33 0 3