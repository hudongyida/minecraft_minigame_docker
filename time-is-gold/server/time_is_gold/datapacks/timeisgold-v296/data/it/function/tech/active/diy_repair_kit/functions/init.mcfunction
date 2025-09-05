data modify storage timeisgold:function_api stack append value {durability:0}
execute store result score @s item.diy_repair_kit.durability run data get entity @s SelectedItem.components."minecraft:custom_data".durability
execute store result storage timeisgold:function_api stack[-1].durability int 1 run scoreboard players operation @s item.diy_repair_kit.durability -= #1 scoreboardConstant
execute if score @s item.diy_repair_kit.durability matches 0 run function it:tech/utils/use_cost/on_right_click {item:glow_item_frame, item_tag:diy_repair_kit}
execute unless score @s item.diy_repair_kit.durability matches 0 at @s run function it:tech/active/diy_repair_kit/functions/durability with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]