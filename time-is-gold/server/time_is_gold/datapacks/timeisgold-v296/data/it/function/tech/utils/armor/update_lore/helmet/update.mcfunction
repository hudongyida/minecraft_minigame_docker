scoreboard players operation @s item.utils.armor.time_defense_additive.integer = @s item.utils.armor.time_defense_additive
scoreboard players operation @s item.utils.armor.time_defense_additive.integer /= #10 scoreboardConstant
scoreboard players operation @s item.utils.armor.time_defense_additive.decimal = @s item.utils.armor.time_defense_additive
scoreboard players operation @s item.utils.armor.time_defense_additive.decimal %= #10 scoreboardConstant

scoreboard players operation @s item.utils.armor.time_defense_multiplicative.integer = @s item.utils.armor.time_defense_multiplicative
scoreboard players operation @s item.utils.armor.time_defense_multiplicative.integer /= #10 scoreboardConstant
scoreboard players operation @s item.utils.armor.time_defense_multiplicative.decimal = @s item.utils.armor.time_defense_multiplicative
scoreboard players operation @s item.utils.armor.time_defense_multiplicative.decimal %= #10 scoreboardConstant

item modify entity @s armor.head it:armor/update_time_defense_stat
scoreboard players operation @s item.utils.armor.helmet.time_defense_additive = @s item.utils.armor.time_defense_additive
scoreboard players operation @s item.utils.armor.helmet.time_defense_multiplicative = @s item.utils.armor.time_defense_multiplicative