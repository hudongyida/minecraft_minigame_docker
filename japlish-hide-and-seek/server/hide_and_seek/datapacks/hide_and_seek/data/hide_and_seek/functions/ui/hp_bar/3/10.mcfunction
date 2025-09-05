#reserve_1 全体
#reserve_2 全体/80

scoreboard players set @s reserve_3 0

#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B1"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B2"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B3"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B4"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B5"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B6"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0B7"
#8
data modify storage macro: ui.hp_bar_3 set value "uE0B8"






