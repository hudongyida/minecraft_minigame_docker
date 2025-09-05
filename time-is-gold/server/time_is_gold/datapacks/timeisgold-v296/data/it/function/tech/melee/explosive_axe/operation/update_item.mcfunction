scoreboard players set @s item.explosive_axe.damage_value 12
execute if score @s item.explosive_axe.charge matches 1.. run scoreboard players add @s item.explosive_axe.damage_value 4
execute if score @s item.explosive_axe.charge matches 2.. run scoreboard players add @s item.explosive_axe.damage_value 3
execute if score @s item.explosive_axe.charge matches 3.. run scoreboard players add @s item.explosive_axe.damage_value 2

item modify entity @s weapon.mainhand it:melee/explosive_axe_update
execute at @s run function it:tech/utils/lore/attack_damage/init {offset:-2}