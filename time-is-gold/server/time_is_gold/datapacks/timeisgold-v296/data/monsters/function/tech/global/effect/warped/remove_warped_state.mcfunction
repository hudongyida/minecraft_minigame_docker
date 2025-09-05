# 실행 인자: monster.warped 태그가 제거된 몬스터(1회만 실행)

execute as @s store result entity @s Health double 0.4 run data get entity @s Health
execute as @s run attribute @s minecraft:attack_damage modifier remove monsters:warped_attack_damage
execute as @s run attribute @s minecraft:max_health modifier remove monsters:warped_max_health
scoreboard players reset @s monsters.global.effect.warped_attribute_check