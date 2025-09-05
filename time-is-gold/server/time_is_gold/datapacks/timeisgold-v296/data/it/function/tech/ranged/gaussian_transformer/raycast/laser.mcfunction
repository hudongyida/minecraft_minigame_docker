execute positioned ^ ^ ^ run particle dust{color:[0.008, 0.239, 1.0], scale:1} ^ ^ ^ 0.05 0.05 0.05 1 5
scoreboard players operation @s item.gaussian_transformer.animation_tick = @s item.utils.raycast.default.step
scoreboard players operation @s item.gaussian_transformer.animation_tick %= #6 scoreboardConstant

execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 0 run particle end_rod ^0.2000 ^0.0000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 0 run particle end_rod ^-0.2000 ^0.0000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 1 run particle end_rod ^0.1732 ^0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 1 run particle end_rod ^-0.1732 ^-0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 2 run particle end_rod ^0.1000 ^0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 2 run particle end_rod ^-0.1000 ^-0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 3 run particle end_rod ^0.0000 ^0.2000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 3 run particle end_rod ^0.0000 ^-0.2000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 4 run particle end_rod ^-0.1000 ^0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 4 run particle end_rod ^0.1000 ^-0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 5 run particle end_rod ^-0.1732 ^0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.gaussian_transformer.animation_tick matches 5 run particle end_rod ^0.1732 ^-0.1000 ^ 0 0 0 1 0