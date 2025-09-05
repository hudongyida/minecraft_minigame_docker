#reserve_1 全体
#reserve_2 全体/80

scoreboard players set @s reserve_3 0

#1
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE001"
#2
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE002"
#3
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE003"
#4
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE004"
#5
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE005"
#6
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE006"
#7
scoreboard players operation @s reserve_3 += @s reserve_2
execute if score @s MP < @s reserve_3 run return run data modify storage macro: ui.mp_bar_1 set value "uE007"
#8
data modify storage macro: ui.mp_bar_1 set value "uE008"






