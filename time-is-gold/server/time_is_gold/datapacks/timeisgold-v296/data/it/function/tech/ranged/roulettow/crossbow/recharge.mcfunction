execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["item.roulettow.armor_stand"],ShowArms:1b,Invisible:1b}
execute as @s at @s run item replace entity @n[tag=item.roulettow.armor_stand,type=armor_stand] weapon.mainhand from entity @s weapon.mainhand
execute as @s at @s store result entity @n[tag=item.roulettow.armor_stand,type=armor_stand] equipment.mainhand.components.minecraft:custom_data.chain_arrow int 1 run scoreboard players get @s item.modified_chain_crossbow.chain_arrow
execute as @s at @s run data modify entity @n[tag=item.roulettow.armor_stand,type=armor_stand] equipment.mainhand.components."minecraft:charged_projectiles" set value [{components:{"minecraft:custom_name":{"color":"#ff55ff","italic":false,"text":"?"}},count:1,id:"minecraft:tipped_arrow"}]
item replace entity @s weapon.mainhand from entity @n[tag=item.roulettow.armor_stand,type=armor_stand] weapon.mainhand
kill @n[tag=item.roulettow.armor_stand,type=armor_stand]