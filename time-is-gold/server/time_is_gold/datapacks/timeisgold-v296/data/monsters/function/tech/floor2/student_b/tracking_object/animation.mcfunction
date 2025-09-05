execute positioned ~ ~ ~ run tp @s ~ ~ ~

scoreboard players operation @s monsters.floor2.student_b.vfx_tick %= #10 scoreboardConstant
execute if score @s monsters.floor2.student_b.vfx_tick matches 9 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.672f,-0.219f,-0.219f,0.672f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 8 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.572f,-0.416f,-0.416f,0.572f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 7 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.416f,-0.572f,-0.572f,0.416f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 6 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.219f,-0.672f,-0.672f,0.219f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 5 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,-0.707f,-0.707f,0f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 4 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.219f,-0.672f,-0.672f,-0.219f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 3 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.416f,-0.572f,-0.572f,-0.416f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 2 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.572f,0.416f,0.416f,0.572f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 1 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.672f,0.219f,0.219f,0.672f]}}
execute if score @s monsters.floor2.student_b.vfx_tick matches 0 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.707f,0f,0f,0.707f]}}