#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0D9"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0DA"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0DB"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0DC"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0DD"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0DE"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0DF"
#8
data modify storage macro: ui.hp_bar_2 set value "uE0E0"






