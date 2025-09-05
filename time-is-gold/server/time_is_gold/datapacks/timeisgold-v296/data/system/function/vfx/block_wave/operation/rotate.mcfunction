# $(radius) - 현재 파동의 반경
# $(angle)  - 회전 각도
$execute at @s positioned ^ ^-1 ^$(radius) unless block ~ ~ ~ #it:air if block ~ ~1 ~ #it:air run function $(function)
$execute at @s positioned ^ ^ ^$(radius) unless block ~ ~ ~ #it:air if block ~ ~1 ~ #it:air run function $(function)
$execute at @s positioned ^ ^1 ^$(radius) unless block ~ ~ ~ #it:air if block ~ ~1 ~ #it:air run function $(function)
$execute at @s run rotate @s ~$(angle) 0

scoreboard players add @s system.vfx.block_wave.rotation_count 1
execute if score @s system.vfx.block_wave.rotation_count <= @s system.vfx.block_wave.rotation run function system:vfx/block_wave/operation/rotate with entity @s data