data modify storage timeisgold:function_api stack append value {value:50, playerid:0, knockback:1}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s as @e[tag=monster,distance=..5] run function system:combat/modified_damage/magic/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1

# VFX
particle explosion_emitter ~ ~ ~ 1 1 1 0.1 5 force
particle totem_of_undying ~ ~1 ~ 1 1 1 0.1 40 force
execute at @s run function system:vfx/expand_circle/init {range:5, step:5, R:1.0, G:0.64, B:0.0}

# HUD
title @s actionbar [{"text": "你的总分是 ", "color": "gold"},{"score": {"name": "@s", "objective": "item.blackjack.rank_sum"}, "color": "gold"},{"text": ". "},{"text": "完美！","color": "gold","bold": true}]