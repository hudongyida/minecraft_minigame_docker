# 실행 인자: 상점 아이템을 제외한 모든 아이템

execute as @s run data modify entity @s CustomNameVisible set value 1b
execute as @s run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
tag @s add system.vfx.item_display.initialized