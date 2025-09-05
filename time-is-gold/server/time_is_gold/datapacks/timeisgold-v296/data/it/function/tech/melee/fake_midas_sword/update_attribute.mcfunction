scoreboard players operation @s item.fake_midas_sword.bonus = @s item.fake_midas_sword.time_crystal_count
scoreboard players operation @s item.fake_midas_sword.bonus *= #2 scoreboardConstant
scoreboard players operation @s item.fake_midas_sword.bonus += #4 scoreboardConstant

item modify entity @s weapon.mainhand it:melee/fake_midas_sword_update
execute at @s run function it:tech/utils/lore/attack_damage/init {offset:-2}

scoreboard players operation @s item.fake_midas_sword.time_crystal_previous = @s item.fake_midas_sword.time_crystal_count
kill @e[type=armor_stand,tag=item.fake_midas_sword.armor_stand.item_modify]