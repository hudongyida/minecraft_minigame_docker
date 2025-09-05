# 실행 인자: phaser 몬스터 엔티티

scoreboard players reset @s monsters.floor2.phaser.ability_delay
scoreboard players set @s monsters.floor2.phaser.ability_tick 80
attribute @s knockback_resistance modifier add phaser_knockback_resistance 0.6 add_value
attribute @s movement_speed modifier add phaser_movement_speed -0.15 add_value
effect give @s resistance infinite 20 true

# SFX
execute at @s run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 0.5 0.5

# VFX
item replace entity @s armor.chest with diamond_chestplate[minecraft:attribute_modifiers=[],minecraft:trim={material:"minecraft:netherite",pattern:"minecraft:bolt"},minecraft:unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[minecraft:attribute_modifiers=[],minecraft:trim={material:"minecraft:diamond",pattern:"minecraft:silence"},minecraft:unbreakable={}]