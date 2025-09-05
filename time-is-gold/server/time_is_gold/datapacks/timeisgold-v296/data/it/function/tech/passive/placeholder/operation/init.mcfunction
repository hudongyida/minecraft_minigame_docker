execute unless score @s item.placeholder.slot matches 0.. run scoreboard players set @s item.placeholder.slot 8
scoreboard players add @s item.placeholder.slot 1
execute if score @s item.placeholder.slot matches 9.. run scoreboard players set @s item.placeholder.slot 5

data modify storage timeisgold:function_api stack append value {slot:"mainhand"}
execute unless items entity @s weapon.mainhand *[custom_data~{item:placeholder}] if items entity @s weapon.offhand *[custom_data~{item:placeholder}] run data modify storage timeisgold:function_api stack[-1].slot set value "offhand"
function it:tech/passive/placeholder/operation/update with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]