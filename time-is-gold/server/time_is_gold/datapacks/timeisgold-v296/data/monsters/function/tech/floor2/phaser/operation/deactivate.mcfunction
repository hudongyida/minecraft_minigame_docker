# 실행 인자: phaser 몬스터 엔티티

scoreboard players reset @s monsters.floor2.phaser.ability_tick
scoreboard players set @s monsters.floor2.phaser.cooldown 100
attribute @s knockback_resistance modifier remove phaser_knockback_resistance
attribute @s movement_speed modifier remove phaser_movement_speed
effect clear @s resistance

# SFX
execute at @s run playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 2

# VFX
item replace entity @s armor.chest with netherite_chestplate[minecraft:attribute_modifiers=[],minecraft:trim={material:"minecraft:diamond",pattern:"minecraft:bolt"},minecraft:unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[minecraft:attribute_modifiers=[],minecraft:unbreakable={}]
particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0.1 0.1 0.1 10