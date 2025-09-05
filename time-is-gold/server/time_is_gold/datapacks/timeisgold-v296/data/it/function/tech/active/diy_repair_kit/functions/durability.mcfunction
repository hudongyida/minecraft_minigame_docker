execute at @s run summon armor_stand ~ ~ ~ {ShowArms:true, Marker:true, Tags:["item.diy_repair_kit.marker"], Invisible:true}
item replace entity @n[tag=item.diy_repair_kit.marker,distance=..1] weapon.mainhand from entity @s weapon.mainhand
$execute as @n[tag=item.diy_repair_kit.marker,distance=..1] run data modify entity @s equipment.mainhand.components.minecraft:custom_data.durability set value $(durability)
$execute as @n[tag=item.diy_repair_kit.marker,distance=..1] run data modify entity @s equipment.mainhand.components.minecraft:lore[-1] set value [{"translate":"item.diy_repair_kit.lore.2",with:[{"text":"$(durability)","color":"red","italic":false}]}]
item replace entity @s weapon.mainhand from entity @n[tag=item.diy_repair_kit.marker,distance=..1] weapon.mainhand
kill @n[type=armor_stand,tag=item.diy_repair_kit.marker]