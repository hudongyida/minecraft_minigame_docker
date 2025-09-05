# $(slot)       - 아이템을 장착한 손 (mainhand/offhand)
# $(durability) - 아이템의 남은 사용 횟수

$execute unless score @s item.tome_of_hyper_epsilon_delta.durability matches 1.. run return run item replace entity @s weapon.$(slot) with air

summon armor_stand ~ ~ ~ {Tags:[item.tome_of_hyper_epsilon_delta.armor_stand],Marker:1b,Invisible:1b,ShowArms:1b,Small:true}
$execute at @s run item replace entity @n[type=armor_stand,tag=item.tome_of_hyper_epsilon_delta.armor_stand] weapon.mainhand from entity @s weapon.$(slot)
$execute at @s run data modify entity @n[type=armor_stand,tag=item.tome_of_hyper_epsilon_delta.armor_stand] equipment.mainhand.components.minecraft:custom_data.durability set value $(durability)
$execute at @s run data modify entity @n[type=armor_stand,tag=item.tome_of_hyper_epsilon_delta.armor_stand] equipment.mainhand.components.minecraft:lore[3] set value [{"translate":"item.tome_of_hyper_epsilon_delta.lore.3"},{"text":"$(durability)","color":"red","italic":false}]
$execute at @s run item replace entity @s weapon.$(slot) from entity @n[type=armor_stand,tag=item.tome_of_hyper_epsilon_delta.armor_stand] weapon.mainhand
execute at @s run kill @n[type=armor_stand,tag=item.tome_of_hyper_epsilon_delta.armor_stand]