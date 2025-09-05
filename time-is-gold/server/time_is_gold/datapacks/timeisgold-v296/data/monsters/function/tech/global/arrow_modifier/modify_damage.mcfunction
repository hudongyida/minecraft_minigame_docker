# 실행 인자: @e[type=arrow,tag=!monsters.arrow.damage_checked]

execute as @s unless function monsters:tech/global/arrow_modifier/monster_check run return fail
execute as @s on origin run function monsters:tech/global/arrow_modifier/store_value
execute as @s store result score @s monsters.global.arrow_modifier.final_damage as @s on origin run scoreboard players get @s monsters.global.arrow_modifier.final_damage

# 화살 데미지 계산
function system:math/vectors/velocity/init {x:monsters.global.arrow_modifier.motion_x, y:monsters.global.arrow_modifier.motion_y, z:monsters.global.arrow_modifier.motion_z}
function system:math/vectors/get_norm/init {x:monsters.global.arrow_modifier.motion_x, y:monsters.global.arrow_modifier.motion_y, z:monsters.global.arrow_modifier.motion_z, output:monsters.global.arrow_modifier.original_damage}
execute store result score @s monsters.global.arrow_modifier.damage_value run data get entity @s damage 10.0
scoreboard players operation @s monsters.global.arrow_modifier.original_damage *= @s monsters.global.arrow_modifier.damage_value

scoreboard players operation @s monsters.global.arrow_modifier.temp = @s monsters.global.arrow_modifier.final_damage
scoreboard players operation @s monsters.global.arrow_modifier.temp *= #100000 scoreboardConstant
scoreboard players operation @s monsters.global.arrow_modifier.temp /= @s monsters.global.arrow_modifier.original_damage
scoreboard players operation @s monsters.global.arrow_modifier.damage_value *= @s monsters.global.arrow_modifier.temp
scoreboard players operation @s monsters.global.arrow_modifier.damage_value /= #100 scoreboardConstant

execute if score @s monsters.global.arrow_modifier.damage_value matches ..1 run scoreboard players set @s monsters.global.arrow_modifier.damage_value 1
execute store result entity @s damage double 0.1 run scoreboard players get @s monsters.global.arrow_modifier.damage_value

tag @s add monsters.arrow.damage_checked