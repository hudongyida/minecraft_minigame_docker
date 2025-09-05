#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0F9"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0FA"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0FB"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0FC"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0FD"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0FE"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0FF"
#8
data modify storage macro: ui.hp_bar_2 set value "uE100"