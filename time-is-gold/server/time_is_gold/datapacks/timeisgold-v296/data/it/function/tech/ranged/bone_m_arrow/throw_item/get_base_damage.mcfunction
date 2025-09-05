scoreboard players set @s item.bone_m_arrow.damage_value 0
execute store result score @s item.bone_m_arrow.damage_value run data get entity @s SelectedItem.components.minecraft:attribute_modifiers[{"type":"minecraft:attack_damage"}].amount 1.0
execute store result score @s item.bone_m_arrow.arrow_count run clear @s arrow 0