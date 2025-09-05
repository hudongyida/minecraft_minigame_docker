execute store result score @s item.utils.laser_cannon.charge run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.charge
execute store result score @s item.utils.laser_cannon.catalyst run data get entity @s SelectedItem.components.minecraft:custom_data.laserCannon.catalyst

execute as @s[tag=item.laser_cannon.charge.gunpowder] run scoreboard players add @s item.utils.laser_cannon.charge 1
execute as @s[tag=item.laser_cannon.charge.gunpowder] run function it:tech/utils/use_cost/item_offhand

execute as @s[tag=item.laser_cannon.charge.neutronium_ingot] run scoreboard players add @s item.utils.laser_cannon.charge 15
execute as @s[tag=item.laser_cannon.charge.neutronium_ingot] run function it:tech/utils/use_cost/item_offhand

execute as @s[tag=item.laser_cannon.charge.time_droplet] run scoreboard players add @s item.utils.laser_cannon.catalyst 2
execute as @s[tag=item.laser_cannon.charge.time_droplet] run function it:tech/utils/use_cost/item_offhand

# SFX
execute as @s at @s run playsound minecraft:block.chiseled_bookshelf.pickup.enchanted block @s ~ ~ ~ 1 0.5 1

# 레이저 캐논 아이템 업데이트
execute at @s run summon armor_stand ~ ~ ~ {Tags:["item.laser_cannon.armor_stand.charge"], Invisible:true, NoGravity:true, Small:true, Marker:true}
execute at @s run item replace entity @n[type=armor_stand,tag=item.laser_cannon.armor_stand.charge,distance=..0.5] weapon.mainhand from entity @s weapon.mainhand
execute at @s store result entity @n[type=armor_stand,tag=item.laser_cannon.armor_stand.charge,distance=..0.5] equipment.mainhand.components.minecraft:custom_data.laserCannon.charge int 1 run scoreboard players get @s item.utils.laser_cannon.charge
execute at @s store result entity @n[type=armor_stand,tag=item.laser_cannon.armor_stand.charge,distance=..0.5] equipment.mainhand.components.minecraft:custom_data.laserCannon.catalyst int 1 run scoreboard players get @s item.utils.laser_cannon.catalyst
execute at @s run item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=item.laser_cannon.armor_stand.charge,distance=..0.5] weapon.mainhand
execute at @s run kill @n[type=armor_stand,tag=item.laser_cannon.armor_stand.charge,distance=..0.5]