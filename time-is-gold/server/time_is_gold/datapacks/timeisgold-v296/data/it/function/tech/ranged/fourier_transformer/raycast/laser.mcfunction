execute positioned ^ ^ ^ run particle dust{color:[1.0, 0.682, 0.0], scale:1} ^ ^ ^ 0.05 0.05 0.05 1 5
scoreboard players operation @s item.fourier_transformer.animation_tick = @s item.utils.raycast.reflection.step
scoreboard players operation @s item.fourier_transformer.animation_tick %= #6 scoreboardConstant

execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 0 run particle end_rod ^0.2000 ^0.0000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 0 run particle end_rod ^-0.2000 ^0.0000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 0 run particle end_rod ^-0.0000 ^0.2000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 0 run particle end_rod ^0.0000 ^-0.2000 ^ 0 0 0 1 0

execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 1 run particle end_rod ^0.1932 ^0.0518 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 1 run particle end_rod ^-0.1932 ^-0.0518 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 1 run particle end_rod ^-0.0518 ^0.1932 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 1 run particle end_rod ^0.0518 ^-0.1932 ^ 0 0 0 1 0

execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 2 run particle end_rod ^0.1732 ^0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 2 run particle end_rod ^-0.1732 ^-0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 2 run particle end_rod ^-0.1000 ^0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 2 run particle end_rod ^0.1000 ^-0.1732 ^ 0 0 0 1 0

execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 3 run particle end_rod ^0.1414 ^0.1414 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 3 run particle end_rod ^-0.1414 ^-0.1414 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 3 run particle end_rod ^-0.1414 ^0.1414 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 3 run particle end_rod ^0.1414 ^-0.1414 ^ 0 0 0 1 0

execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 4 run particle end_rod ^0.1000 ^0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 4 run particle end_rod ^-0.1000 ^-0.1732 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 4 run particle end_rod ^-0.1732 ^0.1000 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 4 run particle end_rod ^0.1732 ^-0.1000 ^ 0 0 0 1 0

execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 5 run particle end_rod ^0.0518 ^0.1932 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 5 run particle end_rod ^-0.0518 ^-0.1932 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 5 run particle end_rod ^-0.1932 ^0.0518 ^ 0 0 0 1 0
execute positioned ^ ^ ^ if score @s item.fourier_transformer.animation_tick matches 5 run particle end_rod ^0.1932 ^-0.0518 ^ 0 0 0 1 0