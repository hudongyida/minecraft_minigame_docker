scoreboard players set @s item.plasma_sabre.damage 10
execute if score @s item.plasma_sabre.active_tick matches 1.. run scoreboard players add @s item.plasma_sabre.damage 7

execute at @s unless score @s item.plasma_sabre.damage = @s item.plasma_sabre.damage_previous run function it:tech/melee/plasma_sabre/modify_item
execute at @s unless score @s item.plasma_sabre.damage = @s item.plasma_sabre.damage_previous run function it:tech/utils/lore/attack_damage/init {offset:-2}
execute at @s unless score @s item.plasma_sabre.damage = @s item.plasma_sabre.damage_previous run scoreboard players operation @s item.plasma_sabre.damage_previous = @s item.plasma_sabre.damage