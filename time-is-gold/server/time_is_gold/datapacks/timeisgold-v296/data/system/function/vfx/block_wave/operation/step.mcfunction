# 실행 인자: @e[type=marker,tag=system.vfx.block_wave.marker]

function system:vfx/block_wave/operation/angle_calc with entity @s data

scoreboard players add @s system.vfx.block_wave.tick 1
execute if score @s system.vfx.block_wave.tick >= @s system.vfx.block_wave.max_tick run kill @s