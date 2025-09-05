scoreboard players operation @s item.bone_m_arrow.animation_tick = @s item.utils.throw_item.step
scoreboard players operation @s item.bone_m_arrow.animation_tick %= #10 scoreboardConstant

execute if score @s item.bone_m_arrow.animation_tick matches 9 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.118f,-0.285f,0.364f,0.879f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 8 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.225f,-0.543f,0.310f,0.747f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 7 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.310f,-0.747f,0.225f,0.543f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 6 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.364f,-0.879f,0.118f,0.285f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 5 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[-0.383f,-0.924f,0f,0f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 4 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.364f,0.879f,0.118f,0.285f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 3 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.310f,0.747f,0.225f,0.543f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 2 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.225f,0.543f,0.310f,0.747f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 1 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.118f,0.285f,0.364f,0.879f]}}
execute if score @s item.bone_m_arrow.animation_tick matches 0 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0.383f,0.924f]}}