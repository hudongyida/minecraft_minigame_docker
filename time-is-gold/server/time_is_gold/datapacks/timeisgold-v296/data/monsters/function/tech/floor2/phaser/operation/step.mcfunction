# 실행 인자: phaser 몬스터 엔티티

scoreboard players remove @s monsters.floor2.phaser.ability_tick 1

# SFX
execute at @s if predicate it:25pc run playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 1 1

# VFX
execute at @s positioned ~ ~1.33 ~ run summon marker ~ ~ ~ {Tags:["monsters.floor2.phaser.marker.vfx"]}
execute at @s positioned ~ ~1.33 ~ as @n[type=marker,tag=monsters.floor2.phaser.marker.vfx,distance=..0.5] run function monsters:tech/floor2/phaser/operation/vfx/init