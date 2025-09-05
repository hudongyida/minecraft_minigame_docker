#air_bar
# 水中か否かを判定するためのマーカーを召喚
execute as @s positioned ~ ~1.62 ~ run summon marker ~ ~ ~ {Tags:["water_judgment"]}
# 水中でないならキルして処理を中断
execute unless entity @e[type=marker,tag=water_judgment,distance=..2,predicate=hide_and_seek:in_water] run return run kill @e[type=marker,tag=water_judgment]


#酸素量を取得
execute store result score @s reserve_1 run data get entity @s Air
#酸素量がカスタム酸素量以下ならダメージ
execute if score @s reserve_1 < #GameManager Air run damage @s 0.01

#マーカーをおかたづけ
kill @e[type=marker,tag=water_judgment]
