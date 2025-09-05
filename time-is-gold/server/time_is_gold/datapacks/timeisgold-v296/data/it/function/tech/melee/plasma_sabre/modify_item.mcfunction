#execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:[item.plasma_sabre.armor_stand.item_modify],Invisible:true,Invulnerable:true,NoGravity:true,Marker:true}
#execute as @s at @s run item replace entity @e[type=armor_stand,tag=item.plasma_sabre.armor_stand.item_modify,sort=nearest,limit=1] weapon.mainhand from entity @s weapon.mainhand
#execute as @s at @s run data remove entity @e[type=armor_stand,tag=item.plasma_sabre.armor_stand.item_modify,sort=nearest,limit=1] equipment.mainhand.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:attack_damage"}]
#execute as @s at @s run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=item.plasma_sabre.armor_stand.item_modify,sort=nearest,limit=1] weapon.mainhand
execute as @s at @s run item modify entity @s weapon.mainhand it:melee/plasma_sabre_update
#kill @e[type=armor_stand,tag=item.plasma_sabre.armor_stand.item_modify]