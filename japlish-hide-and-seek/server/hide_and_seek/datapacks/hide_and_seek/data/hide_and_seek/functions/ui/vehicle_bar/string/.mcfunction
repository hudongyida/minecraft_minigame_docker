#乗り物の最大体力
execute store result score @s reserve_2 on vehicle run attribute @s generic.max_health get
execute store result storage macro: ui.vehicle_bar_string_2 int 1 run scoreboard players get @s reserve_2
#乗り物の体力
execute store result score @s reserve_1 on vehicle run data get entity @s Health
#最大体力より多い場合は合わせる
execute if score @s reserve_1 > @s reserve_2 run scoreboard players operation @s reserve_1 = @s reserve_2
execute store result storage macro: ui.vehicle_bar_string_1 int 1 run scoreboard players get @s reserve_1


#文字数を揃える
#現体力
execute unless score @s reserve_1 matches 100.. run function hide_and_seek:ui/vehicle_bar/string/1 with storage macro: ui
#最大体力
execute unless score @s reserve_2 matches 100.. run function hide_and_seek:ui/vehicle_bar/string/2 with storage macro: ui