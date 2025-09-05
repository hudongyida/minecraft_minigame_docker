#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値


#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0E9"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0EA"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0EB"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0EC"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0ED"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0EE"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s HP < @s reserve_3 run return run data modify storage macro: ui.hp_bar_3 set value "uE0EF"
#8
data modify storage macro: ui.hp_bar_3 set value "uE0F0"






