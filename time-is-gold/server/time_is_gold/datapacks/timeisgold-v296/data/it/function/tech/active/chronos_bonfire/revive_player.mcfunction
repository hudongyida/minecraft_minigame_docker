# 실행 인자: 범위 내에서 사망한 플레이어

scoreboard players add @s timeX10 3000
execute at @s as @n[type=marker,tag=item.chronos_bonfire.marker.placed,distance=..10] run function it:tech/active/chronos_bonfire/macro/destroy with entity @s data

# SFX
execute at @s run playsound block.end_portal.spawn block @a ~ ~ ~ 0.5 1

# HUD
title @s actionbar [{"translate":"item.chronos_bonfire.notify.revived"}]