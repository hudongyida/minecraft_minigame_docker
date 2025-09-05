execute store result score @s item.utils.playing_card.rank run random value 1..10
execute store result score @s item.utils.playing_card.suit run random value 1..4

# 카드 결과 표시
data modify storage timeisgold:function_api stack append value {suit:{"text":"♠", "color": "dark_gray"}}
execute at @s if score @s item.utils.playing_card.suit matches 1 run data modify storage timeisgold:function_api stack[-1].suit set value {"text":"♠", "color": "dark_gray"}
execute at @s if score @s item.utils.playing_card.suit matches 2 run data modify storage timeisgold:function_api stack[-1].suit set value {"text":"♣", "color": "dark_gray"}
execute at @s if score @s item.utils.playing_card.suit matches 3 run data modify storage timeisgold:function_api stack[-1].suit set value {"text":"❤", "color": "red"}
execute at @s if score @s item.utils.playing_card.suit matches 4 run data modify storage timeisgold:function_api stack[-1].suit set value {"text":"♦", "color": "red"}
title @s actionbar [{"nbt":"stack[-1].suit","storage":"timeisgold:function_api","interpret":true}," ",{"score":{"name":"@s","objective":"item.utils.playing_card.rank"},"color": "white"}]
data remove storage timeisgold:function_api stack[-1]

# SFX
execute at @s run playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 0.7 1