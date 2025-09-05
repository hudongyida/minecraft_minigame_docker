# 실행 인자: boss.automaton.pattern2.B 태그를 가진 오토마톤 보스 개체

# SFX
execute at @s run playsound entity.iron_golem.death neutral @a ~ ~ ~ 2 1 0

execute at @s facing entity @a[predicate=system:player,sort=furthest,limit=1] eyes run rotate @s ~ 0
execute at @s run function bosses:tech/automaton/pattern2/shockwave/shockwave_init
execute as @s[tag=!boss.berserk] run scoreboard players operation @s bosses.automaton.pattern2.cooldown = #SYSTEM bosses.automaton.pattern2.cooldown
execute as @s[tag=boss.berserk] run scoreboard players operation @s bosses.automaton.pattern2.cooldown = #BERSERK bosses.automaton.pattern2.cooldown
scoreboard players operation @s bosses.automaton.global.cooldown = #SYSTEM bosses.automaton.global.cooldown