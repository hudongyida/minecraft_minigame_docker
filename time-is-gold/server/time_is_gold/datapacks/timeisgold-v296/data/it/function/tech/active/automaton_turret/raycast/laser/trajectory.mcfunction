execute positioned ^ ^ ^ run particle minecraft:dust_color_transition{from_color:[0.620,0.130,0.940],to_color:[1.000,0.000,1.000],scale:1} ^ ^ ^ 0 0 0 1 5
execute positioned ^ ^ ^ run particle minecraft:dust_pillar{block_state:"minecraft:magenta_stained_glass"} ~ ~ ~ 0.05 0.05 0.05 1 0 force
scoreboard players operation @s item.automaton_turret.animation_tick = @s item.utils.raycast.default.step
scoreboard players operation @s item.automaton_turret.animation_tick %= #6 scoreboardConstant

execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 0 run particle end_rod ^0.2000 ^0.0000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 0 run particle end_rod ^-0.2000 ^0.0000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 1 run particle end_rod ^0.1732 ^0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 1 run particle end_rod ^-0.1732 ^-0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 2 run particle end_rod ^0.1000 ^0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 2 run particle end_rod ^-0.1000 ^-0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 3 run particle end_rod ^0.0000 ^0.2000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 3 run particle end_rod ^0.0000 ^-0.2000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 4 run particle end_rod ^-0.1000 ^0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 4 run particle end_rod ^0.1000 ^-0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 5 run particle end_rod ^-0.1732 ^0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.automaton_turret.animation_tick matches 5 run particle end_rod ^0.1732 ^-0.1000 ^ 0 0 0 1 0