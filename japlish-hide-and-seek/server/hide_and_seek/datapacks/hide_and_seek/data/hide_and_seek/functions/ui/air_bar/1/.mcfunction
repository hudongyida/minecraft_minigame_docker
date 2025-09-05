# 消費酸素量(reserve_1)
#自身の酸素量を保存
execute store result score @s reserve_2 run data get entity @s Air
#酸素が満タンかつ水中でないなら処理を中断
execute if score @s reserve_2 matches 300 unless entity @e[type=marker,tag=water_judgment,distance=..2,predicate=hide_and_seek:in_water] run return 0
#デフォルトの最大酸素量を保存
scoreboard players operation @s reserve_1 = #UI max_air_default
#消費酸素量を算出
scoreboard players operation @s reserve_1 -= @s reserve_2
#消費が301以上なら300に置きなおす
execute if score @s reserve_1 matches 301.. run scoreboard players set @s reserve_1 300

# カスタム最大酸素量(reserve_2)
#カスタム最大酸素量を保存
scoreboard players operation @s reserve_2 = #UI max_air_custom

# 残り酸素量(reserve_3)
scoreboard players operation @s reserve_3 = @s reserve_2
scoreboard players operation @s reserve_3 -= @s reserve_1
#残りが0以下なら処理を中断
execute if score @s reserve_3 matches ..0 run return 0

# 1気泡当たりの酸素量(reserve_1に上書き,reserve_5)
scoreboard players operation @s reserve_1 = #UI max_air_custom_10
scoreboard players operation @s reserve_5 = #UI max_air_custom_10

# 気泡がはぜるタイミングを指定(reserve_4に上書き) //reserve_1 - reserve_4 で後に算出
scoreboard players operation @s reserve_4 = #UI bubble_pop


#分割処理(1,3,5)
#1
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/1
scoreboard players operation @s reserve_1 += @s reserve_5
#2
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/2
scoreboard players operation @s reserve_1 += @s reserve_5
#3
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/3
scoreboard players operation @s reserve_1 += @s reserve_5
#4
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/4
scoreboard players operation @s reserve_1 += @s reserve_5
#5
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/5
scoreboard players operation @s reserve_1 += @s reserve_5
#6
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/6
scoreboard players operation @s reserve_1 += @s reserve_5
#7
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/7
scoreboard players operation @s reserve_1 += @s reserve_5
#8
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/8
scoreboard players operation @s reserve_1 += @s reserve_5
#9
execute if score @s reserve_3 < @s reserve_1 run return run function hide_and_seek:ui/air_bar/1/9
scoreboard players operation @s reserve_1 += @s reserve_5
#10
function hide_and_seek:ui/air_bar/1/10