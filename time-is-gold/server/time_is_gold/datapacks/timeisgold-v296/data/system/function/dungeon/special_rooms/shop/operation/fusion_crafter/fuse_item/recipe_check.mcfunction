scoreboard players reset @s dungeon.special_rooms.shop.fusion_crafter.recipe_check

data modify storage timeisgold:function_api stack append value {loot_table:""}

# 레시피 체크
execute unless score @s dungeon.special_rooms.shop.fusion_crafter.recipe_check matches 1.. run function system:dungeon/special_rooms/shop/operation/fusion_crafter/recipe/necronomicon

execute if score @s dungeon.special_rooms.shop.fusion_crafter.recipe_check matches 1.. run function system:dungeon/special_rooms/shop/operation/fusion_crafter/fuse_item/summon_loot with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]