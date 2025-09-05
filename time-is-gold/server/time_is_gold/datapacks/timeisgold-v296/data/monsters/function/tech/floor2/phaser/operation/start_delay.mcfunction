# 실행 인자: phaser 몬스터 엔티티

scoreboard players set @s monsters.floor2.phaser.ability_delay 20
scoreboard players set @s monsters.floor2.phaser.cooldown 123456789

# SFX
execute at @s run playsound minecraft:block.trial_spawner.detect_player block @a ~ ~ ~ 1 2

# VFX
#item replace entity @s armor.chest with diamond_chestplate[minecraft:attribute_modifiers=[],minecraft:trim={material:"minecraft:netherite",pattern:"minecraft:bolt"},minecraft:unbreakable={show_in_tooltip:true}]
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0 0 0 0.05 10 force