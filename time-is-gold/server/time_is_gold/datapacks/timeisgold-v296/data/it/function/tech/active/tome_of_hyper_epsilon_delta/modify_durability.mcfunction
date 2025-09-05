# 사용 횟수 및 들고 있는 손 체크
execute if items entity @s weapon.mainhand *[custom_data~{item:tome_of_hyper_epsilon_delta}] run tag @s add item.tome_of_hyper_epsilon_delta.mainhand
execute as @s[tag=item.tome_of_hyper_epsilon_delta.mainhand] store result score @s item.tome_of_hyper_epsilon_delta.durability run data get entity @s SelectedItem.components.minecraft:custom_data.durability 1
execute as @s[tag=!item.tome_of_hyper_epsilon_delta.mainhand] store result score @s item.tome_of_hyper_epsilon_delta.durability run data get entity @s equipment.offhand.components.minecraft:custom_data.durability 1
scoreboard players remove @s item.tome_of_hyper_epsilon_delta.durability 1

# 사용 횟수 차감
data modify storage timeisgold:function_api stack append value {slot:"mainhand", durability:0}
execute as @s[tag=!item.tome_of_hyper_epsilon_delta.mainhand] run data modify storage timeisgold:function_api stack[-1].slot set value "offhand"
execute store result storage timeisgold:function_api stack[-1].durability int 1 run scoreboard players get @s item.tome_of_hyper_epsilon_delta.durability
execute at @s run function it:tech/active/tome_of_hyper_epsilon_delta/macro/durability_update with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

tag @s[tag=item.tome_of_hyper_epsilon_delta.mainhand] remove item.tome_of_hyper_epsilon_delta.mainhand