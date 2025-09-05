scoreboard players add @s item.bone_m_arrow.damage_value 1
scoreboard players operation @s item.bone_m_arrow.damage_value *= #2 scoreboardConstant
scoreboard players operation @s item.bone_m_arrow.arrow_cost = @s item.bone_m_arrow.damage_value
scoreboard players operation @s item.bone_m_arrow.arrow_cost /= #16 scoreboardConstant
scoreboard players add @s item.bone_m_arrow.arrow_cost 1