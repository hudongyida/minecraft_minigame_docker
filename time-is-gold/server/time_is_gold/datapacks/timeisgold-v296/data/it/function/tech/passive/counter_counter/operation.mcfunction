scoreboard players operation @s item.counter_counter.damage_bonus = @s item.counter_counter.stack_count
scoreboard players operation @s item.counter_counter.damage_bonus *= #10 scoreboardConstant

# HUD에 스택 수 표시
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:counter_counter}] if score @s item.counter_counter.stack_count matches 1.. run title @s actionbar [{"translate": "item.counter_counter.hud"},{"score": {"name": "@s","objective": "item.counter_counter.stack_count"},"color": "gold"}]
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:counter_counter}] unless score @s item.counter_counter.stack_count matches 1.. run title @s actionbar [{"translate": "item.counter_counter.hud"},{"text": "0", "color": "red"}]