scoreboard players reset @s item.lumino_root.damage_value
function it:tech/melee/lumino_root/detect_light_level
item modify entity @s weapon.mainhand it:melee/lumino_root_update
execute at @s run function it:tech/utils/lore/attack_damage/init {offset:-2}