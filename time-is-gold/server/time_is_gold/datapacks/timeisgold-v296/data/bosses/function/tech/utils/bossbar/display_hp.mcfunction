# 보스바에 현재 체력/최대 체력 표시
$execute as @s store result bossbar $(bossbarid) max run attribute @s minecraft:max_health get 1
$execute as @s store result bossbar $(bossbarid) value run data get entity @s Health 1