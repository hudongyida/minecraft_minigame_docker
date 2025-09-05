scoreboard players remove @s item.modified_chain_crossbow.chain_arrow 1

execute as @s at @s run playsound minecraft:block.vault.insert_item block @a ~ ~ ~ 1 1.5 0
execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["item.modified_chain_arrow.armor_stand"],ShowArms:1b,Invisible:1b}
execute as @s at @s run item replace entity @n[tag=item.modified_chain_arrow.armor_stand,type=armor_stand] weapon.mainhand from entity @s weapon.mainhand
execute as @s at @s store result entity @n[tag=item.modified_chain_arrow.armor_stand,type=armor_stand] equipment.mainhand.components.minecraft:custom_data.chain_arrow int 1 run scoreboard players get @s item.modified_chain_crossbow.chain_arrow
execute as @s at @s run data modify entity @n[tag=item.modified_chain_arrow.armor_stand,type=armor_stand] equipment.mainhand.components."minecraft:charged_projectiles" set value [{components:{"minecraft:custom_name":{"color":"#AAAAAA","italic":false,"text":"锁链箭"},"minecraft:tooltip_display":{hide_tooltip:true}},count:1,id:"minecraft:tipped_arrow"}]
item replace entity @s weapon.mainhand from entity @n[tag=item.modified_chain_arrow.armor_stand,type=armor_stand] weapon.mainhand
kill @n[tag=item.modified_chain_arrow.armor_stand,type=armor_stand]