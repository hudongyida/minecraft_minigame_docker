# 실행 인자: monster.warped 태그가 부여된 몬스터(1회만 실행)

execute as @s run attribute @s minecraft:attack_damage modifier add monsters:warped_attack_damage 1.5 add_multiplied_base
execute as @s run attribute @s minecraft:max_health modifier add monsters:warped_max_health 2.5 add_multiplied_total
execute as @s store result entity @s Health double 2.5 run data get entity @s Health
scoreboard players set @s monsters.global.effect.warped_attribute_check 1