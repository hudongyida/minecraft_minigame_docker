execute at @s unless score @s item.automaton_turret.runtime matches 1.. unless score @s item.automaton_turret.fuel matches 1.. unless score @s item.automaton_turret.interval matches 17.. run return fail
execute at @s unless entity @n[tag=monster,distance=..25] unless score @s item.automaton_turret.interval matches 17.. run return run function it:tech/active/automaton_turret/animation/alert with entity @s data

execute as @s at @s run scoreboard players add @s item.automaton_turret.interval 1
execute as @s if score @s item.automaton_turret.interval matches 40.. run scoreboard players reset @s item.automaton_turret.interval

execute as @s if score @s item.automaton_turret.interval matches 6..36 run function it:tech/active/automaton_turret/animation/aiming with entity @s data
execute as @s if score @s item.automaton_turret.interval matches 10 run function it:tech/active/automaton_turret/animation/charge with entity @s data

execute as @s if score @s item.automaton_turret.interval matches 37 run function it:tech/active/automaton_turret/animation/frame_shoot_1 with entity @s data
execute as @s if score @s item.automaton_turret.interval matches 37 run function it:tech/active/automaton_turret/functions/operate/raycast_preset with entity @s data
execute as @s if score @s item.automaton_turret.interval matches 37 at @s run function it:tech/active/automaton_turret/functions/operate/shoot_sound
execute as @s if score @s item.automaton_turret.interval matches 39 run function it:tech/active/automaton_turret/animation/frame_shoot_2 with entity @s data
execute as @s if score @s item.automaton_turret.interval matches 39 at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 2 force