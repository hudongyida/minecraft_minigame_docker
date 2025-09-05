# 残り酸素量(reserve_3)

# 気泡がはぜるタイミングを算出
scoreboard players operation @s reserve_1 -= @s reserve_4


execute if score @s reserve_3 < @s reserve_1 run return run data modify storage macro: ui.air_bar set value "uE102"
data modify storage macro: ui.air_bar set value "uE103"
