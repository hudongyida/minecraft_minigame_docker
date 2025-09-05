# 스코어보드 관리
execute as @s at @s if score @s bosses.automaton.pattern2.cooldown matches 1.. run scoreboard players remove @s bosses.automaton.pattern2.cooldown 1

# 2번 패턴 발동 조건
execute at @s unless score @s bosses.automaton.pattern4.countdown_tick matches 1.. unless score @s bosses.automaton.pattern2.cooldown matches 1.. unless score @s bosses.automaton.global.cooldown matches 1.. if entity @a[predicate=system:player,distance=..5] run tag @s add boss.automaton.pattern2.A
execute as @s[tag=!boss.automaton.pattern2.A] at @s unless score @s bosses.automaton.pattern4.countdown_tick matches 1.. unless score @s bosses.automaton.pattern2.cooldown matches 1.. unless score @s bosses.automaton.global.cooldown matches 1.. if entity @a[predicate=system:player,distance=10..100] run tag @s add boss.automaton.pattern2.B

# 2번 패턴 발동
execute as @s[tag=boss.automaton.pattern2.A] at @s run function bosses:tech/automaton/pattern2/shockwave_a
execute as @s[tag=boss.automaton.pattern2.B] at @s run function bosses:tech/automaton/pattern2/shockwave_b
tag @s[tag=boss.automaton.pattern2.A] remove boss.automaton.pattern2.A
tag @s[tag=boss.automaton.pattern2.B] remove boss.automaton.pattern2.B