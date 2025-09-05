execute at @s run summon armor_stand ~ ~ ~ {Tags:["item.utils.crossbow.rocket.armor_stand"],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}

execute at @s[tag=item.utils.detect.crossbow.rocket.mainhand] positioned ~-0.5 ~-0.5 ~-0.5 run item replace entity @n[type=armor_stand,tag=item.utils.crossbow.rocket.armor_stand,dx=0] weapon.mainhand from entity @s weapon.mainhand
execute at @s[tag=!item.utils.detect.crossbow.rocket.mainhand] positioned ~-0.5 ~-0.5 ~-0.5 run item replace entity @n[type=armor_stand,tag=item.utils.crossbow.rocket.armor_stand,dx=0] weapon.mainhand from entity @s weapon.offhand

$execute at @s positioned ~-0.5 ~-0.5 ~-0.5 run data modify entity @n[type=armor_stand,tag=item.utils.crossbow.rocket.armor_stand,dx=0] equipment.mainhand.components.minecraft:charged_projectiles[] set value $(rocket)

execute at @s[tag=item.utils.detect.crossbow.rocket.mainhand] positioned ~-0.5 ~-0.5 ~-0.5 run item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=item.utils.crossbow.rocket.armor_stand,dx=0] weapon.mainhand
execute at @s[tag=!item.utils.detect.crossbow.rocket.mainhand] positioned ~-0.5 ~-0.5 ~-0.5 run item replace entity @s weapon.offhand from entity @n[type=armor_stand,tag=item.utils.crossbow.rocket.armor_stand,dx=0] weapon.mainhand

execute at @s positioned ~-0.5 ~-0.5 ~-0.5 run kill @n[type=armor_stand,tag=item.utils.crossbow.rocket.armor_stand,dx=0]