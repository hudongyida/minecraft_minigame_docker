scoreboard players remove @s item.nano_boost.other_effects 1
execute if score @s item.nano_boost.other_effects matches 0 run scoreboard players reset @s item.nano_boost.other_effects

particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.5 0.3 0.01 1 force
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 1 force
particle minecraft:dust_color_transition{from_color:[1.000,0.330,1.000],scale:1,to_color:[0.000,0.000,0.667]} ~ ~ ~ 0.3 0.5 0.3 0.05 2 force