execute as @s at @s unless score @s bosses.automaton.pattern3.tick_a matches 0.. run scoreboard players set @s bosses.automaton.pattern3.tick_a 20

execute as @a[predicate=system:player] at @s if entity @e[type=iron_golem,tag=boss.automaton,distance=..100] store result score @s bosses.automaton.pattern3.y_coord run data get entity @s Pos[1]
execute as @s at @s store result score @s bosses.automaton.pattern3.y_coord run data get entity @s Pos[1]
execute as @s at @s run scoreboard players add @s bosses.automaton.pattern3.y_coord 3
execute as @s at @s as @a[predicate=system:player,distance=..100] at @s if score @s bosses.automaton.pattern3.y_coord >= @e[type=iron_golem,tag=boss.automaton,distance=..100,sort=nearest,limit=1] bosses.automaton.pattern3.y_coord run tag @s add bosses.automaton.pattern3.add.a
execute as @s at @s if entity @a[predicate=system:player,distance=..100,tag=bosses.automaton.pattern3.add.a] run scoreboard players remove @s bosses.automaton.pattern3.tick_a 1
execute as @s at @s unless entity @a[predicate=system:player,distance=..100,tag=bosses.automaton.pattern3.add.a] run scoreboard players set @s bosses.automaton.pattern3.tick_a 20

execute as @s at @s if score @s bosses.automaton.pattern3.tick_a matches ..1 run scoreboard players add @a[predicate=system:player,distance=..100,tag=bosses.automaton.pattern3.add.a] bosses.automaton.pattern3.anger 20
execute as @s at @s if score @s bosses.automaton.pattern3.tick_a matches ..1 run scoreboard players set @s bosses.automaton.pattern3.tick_a 20
execute as @a[tag=bosses.automaton.pattern3.add.a] run tag @s remove bosses.automaton.pattern3.add.a