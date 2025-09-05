data modify storage timeisgold:function_api stack append value {value:15, playerid:0, knockback:1}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute at @s as @e[tag=monster,distance=..5] run function system:combat/modified_damage/magic/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
playsound minecraft:item.mace.smash_ground_heavy player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1

# VFX
particle explosion_emitter ~ ~ ~ 1 1 1 0.1 3 force
execute at @s run function system:vfx/expand_circle/init {range:5, step:5, R:0.66, G:0.0, B:0.66}

# HUD
title @s actionbar [{"text": "你的总分是 ", "color": "dark_purple"},{"score": {"name": "@s", "objective": "item.blackjack.rank_sum"}, "color": "dark_purple"},{"text": ". "},{"text": "令人惊讶！","color": "dark_purple","bold": true}]