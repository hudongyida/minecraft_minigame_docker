scoreboard players operation @s item.tomahawk.animation_tick = @s item.utils.throw_item.step
scoreboard players operation @s item.tomahawk.animation_tick %= #10 scoreboardConstant
execute as @s if score @s item.tomahawk.animation_tick matches 9 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.555f,-0.438f,-0.555f,0.438f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 8 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.663f,-0.245f,-0.663f,0.245f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 7 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.707f,-0.028f,-0.707f,0.028f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 6 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.681f,0.192f,-0.681f,-0.192f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 5 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.588f,0.393f,-0.588f,-0.393f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 4 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.438f,0.555f,-0.438f,-0.555f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 3 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.245f,0.663f,-0.245f,-0.663f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 2 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.028f,0.707f,-0.028f,-0.707f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 1 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.192f,0.681f,0.192f,-0.681f]}}
execute as @s if score @s item.tomahawk.animation_tick matches 0 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.393f,-0.588f,-0.393f,0.588f]}}

particle ash ~ ~ ~ 0 0 0 0.1 2 force