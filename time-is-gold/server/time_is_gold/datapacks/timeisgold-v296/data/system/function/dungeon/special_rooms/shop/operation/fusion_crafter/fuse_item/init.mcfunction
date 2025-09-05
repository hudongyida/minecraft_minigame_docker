function system:dungeon/special_rooms/shop/operation/fusion_crafter/fuse_item/recipe_check
execute if score @s dungeon.special_rooms.shop.fusion_crafter.recipe_check matches 1.. run return fail

execute store result score @s dungeon.special_rooms.shop.fusion_crafter.rarity.result run function system:dungeon/special_rooms/shop/operation/fusion_crafter/fuse_item/get_rarity
execute store result score @s dungeon.special_rooms.shop.fusion_crafter.type.result run function system:dungeon/special_rooms/shop/operation/fusion_crafter/fuse_item/get_type
scoreboard players operation @s dungeon.special_rooms.shop.fusion_crafter.rarity.result < #4 scoreboardConstant

data modify storage timeisgold:function_api stack append value {rarity:"", type:"", loot_table:""}

execute if score @s dungeon.special_rooms.shop.fusion_crafter.rarity.result matches 0 run data modify storage timeisgold:function_api stack[-1].rarity set value "common"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.rarity.result matches 1 run data modify storage timeisgold:function_api stack[-1].rarity set value "uncommon"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.rarity.result matches 2 run data modify storage timeisgold:function_api stack[-1].rarity set value "rare"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.rarity.result matches 3 run data modify storage timeisgold:function_api stack[-1].rarity set value "epic"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.rarity.result matches 4 run data modify storage timeisgold:function_api stack[-1].rarity set value "legendary"

execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.result matches 0 run data modify storage timeisgold:function_api stack[-1].type set value "active"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.result matches 1 run data modify storage timeisgold:function_api stack[-1].type set value "passive"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.result matches 2 run data modify storage timeisgold:function_api stack[-1].type set value "weapon"
execute if score @s dungeon.special_rooms.shop.fusion_crafter.type.result matches 3 run data modify storage timeisgold:function_api stack[-1].type set value "armor"

function system:dungeon/special_rooms/shop/operation/fusion_crafter/macro/concat_table with storage timeisgold:function_api stack[-1]
function system:dungeon/special_rooms/shop/operation/fusion_crafter/fuse_item/summon_loot with storage timeisgold:function_api stack[-1]
function system:dungeon/special_rooms/shop/operation/fusion_crafter/gui/reset

data remove storage timeisgold:function_api stack[-1]