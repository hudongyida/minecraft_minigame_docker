# radius = 1일 때 6블록 소환, 회전각 = 60도

scoreboard players reset @s bosses.automaton.pattern4.shockwave_rotation_count
execute as @s store result score @s bosses.automaton.pattern4.shockwave_y_diff run data get entity @s Pos[1] 1000

# 회전 각도 계산
$execute as @s store result entity @s data.radius double $(step) run scoreboard players get @s bosses.automaton.pattern4.shockwave_life_tick
execute as @s store result score @s bosses.automaton.pattern4.shockwave_radius run data get entity @s data.radius 1000
execute as @s run scoreboard players set @s bosses.automaton.pattern4.shockwave_angle_calc 60000000
execute as @s run scoreboard players operation @s bosses.automaton.pattern4.shockwave_angle_calc /= @s bosses.automaton.pattern4.shockwave_radius
execute as @s store result entity @s data.angle double 0.001 run scoreboard players get @s bosses.automaton.pattern4.shockwave_angle_calc

# 회전 횟수 계산
execute as @s store result score @s bosses.automaton.pattern4.shockwave_rotation run data get entity @s data.radius 1000
execute as @s run scoreboard players operation @s bosses.automaton.pattern4.shockwave_rotation *= #6 scoreboardConstant
execute as @s run scoreboard players operation @s bosses.automaton.pattern4.shockwave_rotation /= #1000 scoreboardConstant

# 내부/외부 반경 계산(데미지 판정 범위)
execute as @s run scoreboard players operation @s bosses.automaton.pattern4.shockwave_inner_radius = @s bosses.automaton.pattern4.shockwave_radius
execute as @s run scoreboard players operation @s bosses.automaton.pattern4.shockwave_outer_radius = @s bosses.automaton.pattern4.shockwave_radius
execute as @s run scoreboard players remove @s bosses.automaton.pattern4.shockwave_inner_radius 1500
execute as @s run scoreboard players add @s bosses.automaton.pattern4.shockwave_outer_radius 1000
execute as @s run scoreboard players operation @s bosses.automaton.pattern4.shockwave_inner_radius > #0 scoreboardConstant
execute as @s store result entity @s data.inner_circle double 0.001 run scoreboard players get @s bosses.automaton.pattern4.shockwave_inner_radius
execute as @s store result entity @s data.outer_circle double 0.001 run scoreboard players get @s bosses.automaton.pattern4.shockwave_outer_radius

rotate @s 0 0
execute at @s run function bosses:tech/automaton/pattern4/shockwave_circular/shockwave_circular_rotation with entity @s data