#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0B9"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0BA"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0BB"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0BC"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0BD"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0BE"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0BF"
#8
data modify storage macro: ui.hp_bar_2 set value "uE0C0"






