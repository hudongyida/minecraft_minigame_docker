# radius = 1일 때 6블록 소환, 회전각 = 60도

execute as @s run scoreboard players set @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation_count 0
execute as @s store result score @s bosses.automaton.pattern4.shockwave_y_diff run data get entity @s Pos[1] 1000

# 회전 각도 계산
$execute as @s store result entity @s data.radius double $(step) run scoreboard players get @s bosses.the_shaman.pattern3.chalice.circular_wave.tick
execute as @s store result score @s bosses.the_shaman.pattern3.chalice.circular_wave.radius run data get entity @s data.radius 1000
scoreboard players set @s bosses.the_shaman.pattern3.chalice.circular_wave.angle 60000000
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.circular_wave.angle /= @s bosses.the_shaman.pattern3.chalice.circular_wave.radius
execute as @s store result entity @s data.angle double 0.001 run scoreboard players get @s bosses.the_shaman.pattern3.chalice.circular_wave.angle

# 회전 횟수 계산
execute as @s store result score @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation run data get entity @s data.radius 1000
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation *= #6 scoreboardConstant
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation /= #1000 scoreboardConstant

# 내부/외부 반경 계산(데미지 판정 범위)
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.circular_wave.inner_radius = @s bosses.the_shaman.pattern3.chalice.circular_wave.radius
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.circular_wave.outer_radius = @s bosses.the_shaman.pattern3.chalice.circular_wave.radius
scoreboard players remove @s bosses.the_shaman.pattern3.chalice.circular_wave.inner_radius 1000
scoreboard players add @s bosses.the_shaman.pattern3.chalice.circular_wave.outer_radius 1000
scoreboard players operation @s bosses.the_shaman.pattern3.chalice.circular_wave.inner_radius > #0 scoreboardConstant
execute as @s store result entity @s data.inner_circle double 0.001 run scoreboard players get @s bosses.the_shaman.pattern3.chalice.circular_wave.inner_radius
execute as @s store result entity @s data.outer_circle double 0.001 run scoreboard players get @s bosses.the_shaman.pattern3.chalice.circular_wave.outer_radius

scoreboard players reset @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation_count
rotate @s 0 0
execute at @s run function bosses:tech/the_shaman/pattern3/type4/wave/operation/rotate_marker with entity @s data