#title @a actionbar [{"text":"","font":"player_ui","color":"#4e5c24"},{"text":"\uE051\uE001\uE052"}]

#最終的なアウトプット
#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値
#reserve_4 全体/10
#reserve_5 体力

execute store result score @s reserve_1 on vehicle run attribute @s generic.max_health get
execute unless score @s reserve_1 matches 1.. run return 0
scoreboard players set @s reserve_5 10
#最大体力を10倍
scoreboard players operation @s reserve_1 *= @s reserve_5
#最大体力値を複製
scoreboard players operation @s reserve_2 = @s reserve_1

scoreboard players operation @s reserve_4 = @s reserve_1
#全体/10
scoreboard players operation @s reserve_4 /= @s reserve_5
#全体/80
scoreboard players set @s reserve_5 80
scoreboard players operation @s reserve_2 /= @s reserve_5
#体力
execute store result score @s reserve_5 on vehicle run data get entity @s Health
scoreboard players set @s reserve_3 10
#最大体力を10倍
scoreboard players operation @s reserve_5 *= @s reserve_3
#最大体力よりも多いのであれば合わせる
execute if score @s reserve_5 > @s reserve_1 run scoreboard players operation @s reserve_5 = @s reserve_1
#最大体力値を複製
scoreboard players operation @s reserve_3 = @s reserve_1

#1
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/1
#2
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/2
#3
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/3
#4
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/4
#5
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/5
#6
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/6
#7
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/7
#8
scoreboard players operation @s reserve_3 -= @s reserve_4
execute if score @s reserve_5 > @s reserve_3 run return run function hide_and_seek:ui/vehicle_bar/1/8
#9
function hide_and_seek:ui/vehicle_bar/1/9
