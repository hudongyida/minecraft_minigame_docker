#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0C9"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0CA"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0CB"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0CC"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0CD"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0CE"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP_old < @s reserve_3 run return run data modify storage macro: ui.hp_bar_2 set value "uE0CF"
#8
data modify storage macro: ui.hp_bar_2 set value "uE0D0"






