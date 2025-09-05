# 실행 인자: 사망한 플레이어

clear @s *[custom_data~{item:"necronomicon"}] 1
scoreboard players add @s timeX10 6660

data modify storage timeisgold:function_api stack append value {playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s as @e[tag=monster,tag=!boss,distance=..8] run function it:tech/passive/necronomicon/apply_damage with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound block.end_portal.spawn block @a ~ ~ ~ 0.5 1
execute at @s run playsound minecraft:block.sculk_shrieker.shriek block @s ~ ~ ~ 0.5 0.5

# VFX
execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.33 0.33 0.33 0.1 20 force
execute at @s run particle minecraft:soul ~ ~1 ~ 0.2 0.2 0.2 0.05 15 force
execute at @s run particle minecraft:explosion_emitter ~ ~1 ~ 0.4 0.4 0.4 0.15 1 force

# HUD
title @s actionbar [{"translate":"item.necronomicon.notify.revived","fallback":"You were revived by the power of Necronomicon!","color":"green"}]