data modify storage timeisgold:function_api stack append value {value:8, playerid:0, knockback:1}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid

execute if score @s item.blackjack.rank_sum matches 16 run data modify storage timeisgold:function_api stack[-1].value set value 8
execute if score @s item.blackjack.rank_sum matches 17 run data modify storage timeisgold:function_api stack[-1].value set value 10

execute at @s as @e[tag=monster,distance=..5] run function system:combat/modified_damage/magic/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
playsound minecraft:item.mace.smash_ground player @s ~ ~ ~ 1 1

# VFX
particle explosion_emitter ~ ~ ~ 1 1 1 0.1 1 force
execute at @s run function system:vfx/expand_circle/init {range:5, step:5, R:0.33, G:0.33, B:1.0}

# HUD
title @s actionbar [{"text": "你的总分是 ", "color": "blue"},{"score": {"name": "@s", "objective": "item.blackjack.rank_sum"}, "color": "blue"},{"text": ". "},{"text": "不错！","color": "blue","bold": true}]