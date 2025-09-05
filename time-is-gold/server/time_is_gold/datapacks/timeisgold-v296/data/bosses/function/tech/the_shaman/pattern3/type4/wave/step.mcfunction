# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern3.chalice.type4.wave.center]

function bosses:tech/the_shaman/pattern3/type4/wave/operation/angle_calc with entity @s data
execute at @s run function bosses:tech/the_shaman/pattern3/type4/wave/operation/apply_damage with entity @s data

scoreboard players add @s bosses.the_shaman.pattern3.chalice.circular_wave.tick 1
execute if score @s bosses.the_shaman.pattern3.chalice.circular_wave.tick >= @s bosses.the_shaman.pattern3.chalice.circular_wave.max_tick run kill @s