execute if score @s bosses.automaton.pattern4.cooldown matches 1.. run scoreboard players remove @s bosses.automaton.pattern4.cooldown 1

# 패턴 시작
execute as @s[tag=!boss.automaton.pattern4.active] at @s unless score @s bosses.automaton.pattern4.cooldown matches 1.. unless score @s bosses.automaton.global.cooldown matches 1.. if entity @p[predicate=system:player,distance=..100] run function bosses:tech/automaton/pattern4/pattern4_init

# 패턴 발동 중
execute as @s[tag=boss.automaton.pattern4.active] run function bosses:tech/automaton/pattern4/pattern4_active

# 타이머가 0이 되기 전에 실드가 모두 소거됨
execute as @s[tag=boss.automaton.pattern4.interrupted] run function bosses:tech/automaton/pattern4/pattern4_interrupted

# 타이머가 0이 됨
execute as @s[tag=boss.automaton.pattern4.terminate] run function bosses:tech/automaton/pattern4/pattern4_terminate