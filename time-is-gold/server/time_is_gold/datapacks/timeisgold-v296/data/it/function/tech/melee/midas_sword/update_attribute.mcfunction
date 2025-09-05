scoreboard players operation @s item.midas_sword.bonus = @s item.midas_sword.time_cluster_count
scoreboard players operation @s item.midas_sword.bonus *= #5 scoreboardConstant
scoreboard players operation @s item.midas_sword.bonus += #4 scoreboardConstant

item modify entity @s weapon.mainhand it:melee/midas_sword_update
execute at @s run function it:tech/utils/lore/attack_damage/init {offset:-2}

scoreboard players operation @s item.midas_sword.time_cluster_previous = @s item.midas_sword.time_cluster_count