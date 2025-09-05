# 헬멧에 부여된 스탯 체크 후 Lore를 수정하는 함수. 

execute store result score @s item.utils.armor.time_defense_additive run data get entity @s equipment.head.components."minecraft:custom_data".armor.additive
execute store result score @s item.utils.armor.time_defense_multiplicative run data get entity @s equipment.head.components."minecraft:custom_data".armor.multiplicative

execute if score @s item.utils.armor.time_defense_additive = @s item.utils.armor.helmet.time_defense_additive if score @s item.utils.armor.time_defense_multiplicative = @s item.utils.armor.helmet.time_defense_multiplicative run tag @s add item.utils.armor.ignore_update
execute as @s[tag=!item.utils.armor.ignore_update] run function it:tech/utils/armor/update_lore/helmet/update

tag @s[tag=item.utils.armor.ignore_update] remove item.utils.armor.ignore_update