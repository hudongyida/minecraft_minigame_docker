# 실행 인자: @e[type=marker,tag=bosses.automaton.pattern5.marker.obstacle]

execute if score @s bosses.automaton.pattern5.spawn_delay matches 0.. run function bosses:tech/automaton/pattern5/operation/delay
execute if score @s bosses.automaton.pattern5.spawn_delay matches 0.. run return fail

execute if score @s bosses.automaton.pattern5.tick = #SYSTEM bosses.automaton.pattern5.tick run function bosses:tech/automaton/pattern5/operation/obstacle/init with entity @s data
execute if score @s bosses.automaton.pattern5.tick matches 1.. run scoreboard players remove @s bosses.automaton.pattern5.tick 1
execute unless score @s bosses.automaton.pattern5.tick matches 1.. at @s run function bosses:tech/automaton/pattern5/operation/terminate with entity @s data

# VFX
particle dust{color:[0.33, 0.33, 0.33],scale:1} ~ ~ ~ 1.5 0 1.5 0.1 10 force
particle infested ~ ~ ~ 1.5 0 1.5 0 4 force