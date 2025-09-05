effect give @s resistance 1 20 true
attribute @s minecraft:explosion_knockback_resistance modifier add bosses:automaton.pattern3.explosion_knockback_resistance 1.0 add_value

execute as @s at @s run scoreboard players operation @s bosses.automaton.pattern3.max_anger > @a[predicate=system:player,distance=..100] bosses.automaton.pattern3.anger
execute as @a[predicate=system:player] at @s if score @s bosses.automaton.pattern3.anger >= @n[type=iron_golem,tag=boss.automaton] bosses.automaton.pattern3.max_anger run tag @s add bosses.automaton.pattern3.target

execute as @s at @s run rotate @s facing entity @a[tag=bosses.automaton.pattern3.target,sort=furthest,limit=1] eyes
execute as @s at @s anchored eyes facing entity @a[tag=bosses.automaton.pattern3.target,sort=furthest,limit=1] eyes run function bosses:tech/automaton/pattern3/raycast_call

scoreboard players set @a bosses.automaton.pattern3.anger 0
scoreboard players operation @s bosses.automaton.pattern3.cooldown = #SYSTEM bosses.automaton.pattern3.cooldown
scoreboard players operation @s bosses.automaton.global.cooldown = #SYSTEM bosses.automaton.global.cooldown
tag @s remove boss.automaton.pattern3.init
tag @a[tag=bosses.automaton.pattern3.target] remove bosses.automaton.pattern3.target
attribute @s minecraft:explosion_knockback_resistance modifier remove bosses:automaton.pattern3.explosion_knockback_resistance