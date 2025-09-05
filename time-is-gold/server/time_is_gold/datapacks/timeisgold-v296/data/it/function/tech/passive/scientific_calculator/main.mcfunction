execute as @a run function it:tech/utils/detect/slot {item:iron_door, slot:7, item_tag:scientific_calculator, tag:item.scientific_calculator.active}

execute as @a[tag=item.scientific_calculator.active] run scoreboard players operation @s item.scientific_calculator.time_integer = @s timeX10
execute as @a[tag=item.scientific_calculator.active] run scoreboard players operation @s item.scientific_calculator.time_integer /= #10 scoreboardConstant
execute as @a[tag=item.scientific_calculator.active] unless score @s item.scientific_calculator.time_integer = @s item.scientific_calculator.time_integer_previous run function it:tech/passive/scientific_calculator/update_damage

# 아이템을 들면 현재 비트 수 표시
execute as @a[tag=item.scientific_calculator.active] if items entity @s weapon.mainhand iron_door[custom_data~{item:scientific_calculator}] run title @s actionbar [{"text": "比特计数: ","color": "gray"}, {"score":{"name": "@s","objective": "item.scientific_calculator.bit_count"},"color":"blue"}]

execute as @a[tag=!item.scientific_calculator.active] if score @s item.scientific_calculator.damage_bonus matches 1.. run scoreboard players reset @s item.scientific_calculator.damage_bonus
tag @a[tag=item.scientific_calculator.active] remove item.scientific_calculator.active