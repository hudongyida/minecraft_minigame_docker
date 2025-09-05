data modify storage timeisgold:function_api stack append value {lore0:{translate: "item.placeholder.lore_update.0", with:[{text:"\uE009", color:"yellow", italic:false}]},  lore1:{translate: "item.placeholder.lore_update.1", with:[{}]}}

execute if score @s item.placeholder.slot matches 5 run data modify storage timeisgold:function_api stack[-1].lore0.with[0].text set value "\uE006"
execute if score @s item.placeholder.slot matches 6 run data modify storage timeisgold:function_api stack[-1].lore0.with[0].text set value "\uE007"
execute if score @s item.placeholder.slot matches 7 run data modify storage timeisgold:function_api stack[-1].lore0.with[0].text set value "\uE008"
execute if score @s item.placeholder.slot matches 8 run data modify storage timeisgold:function_api stack[-1].lore0.with[0].text set value "\uE009"
data modify storage timeisgold:function_api stack[-1].lore1.with[0] set from storage timeisgold:function_api stack[-1].lore0.with[0]

$item modify entity @s weapon.$(slot) it:passive/placeholder_update

data remove storage timeisgold:function_api stack[-1]