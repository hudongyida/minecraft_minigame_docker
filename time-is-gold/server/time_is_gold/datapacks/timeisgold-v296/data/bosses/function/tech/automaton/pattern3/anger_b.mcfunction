execute as @s at @s if score @s bosses.automaton.pattern3.tick_b matches 1.. run scoreboard players remove @s bosses.automaton.pattern3.tick_b 1

execute as @s at @s unless score @s bosses.automaton.pattern3.tick_b matches 1.. unless score @s bosses.automaton.pattern4.countdown_tick matches 1.. if entity @e[type=marker,tag=bosses.automaton.pattern3.marker.anger_b,distance=..4] run tag @s add bosses.automaton.pattern3.add_b
execute as @s at @s unless score @s bosses.automaton.pattern3.tick_b matches 1.. if entity @e[type=marker,tag=bosses.automaton.pattern3.marker.anger_b,distance=..4] run kill @e[type=marker,tag=bosses.automaton.pattern3.marker.anger_b,distance=..4]
execute as @s[tag=bosses.automaton.pattern3.add_b] at @s run scoreboard players add @a[predicate=system:player,sort=nearest,limit=1] bosses.automaton.pattern3.anger 50
execute as @s[tag=bosses.automaton.pattern3.add_b] run tag @s remove bosses.automaton.pattern3.add_b

execute as @s at @s unless score @s bosses.automaton.pattern3.tick_b matches 1.. if entity @a[predicate=system:player,distance=..100] unless score @s bosses.automaton.pattern4.countdown_tick matches 1.. run summon marker ~ ~ ~ {Tags:[bosses.automaton.pattern3.marker.anger_b]}
execute as @s at @s unless score @s bosses.automaton.pattern3.tick_b matches 1.. run scoreboard players set @s bosses.automaton.pattern3.tick_b 100

# 마커 위치 디버그
#execute as @e[type=marker,tag=bosses.automaton.pattern3.marker.anger_b] at @s run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 1 0 force