data modify storage timeisgold:function_api stack append value {value:4, playerid:0, knockback:1}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid

execute if score @s item.blackjack.rank_sum matches 16 run data modify storage timeisgold:function_api stack[-1].value set value 4
execute if score @s item.blackjack.rank_sum matches 17 run data modify storage timeisgold:function_api stack[-1].value set value 6

execute at @s as @e[tag=monster,distance=..5] run function system:combat/modified_damage/magic/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# SFX
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# VFX
execute at @s run function system:vfx/expand_circle/init {range:5, step:5, R:0.33, G:1.0, B:0.33}

# HUD
title @s actionbar [{"text": "你的总分是 ", "color": "green"},{"score": {"name": "@s", "objective": "item.blackjack.rank_sum"}, "color": "green"},{"text": ". "},{"text": "很好！","color": "green","bold": true}]