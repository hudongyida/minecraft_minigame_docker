#title @a actionbar [{"text":"","font":"player_ui","color":"#4e5c24"},{"text":"\uE051\uE001\uE052"}]

#最終的なアウトプット
#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値

#事前準備済みの数値を代入
scoreboard players operation @s reserve_1 = #UI max_hp
scoreboard players operation @s reserve_2 = #UI max_hp_80
scoreboard players operation @s reserve_3 = #UI max_hp

#1
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/1
#2
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/2
#3
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/3
#4
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/4
#5
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/5
#6
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/6
#7
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/7
#8
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/8
#9
scoreboard players operation @s reserve_3 -= #UI max_hp_10
execute if score @s HP > @s reserve_3 run return run function hide_and_seek:ui/hp_bar/3/9
#10
function hide_and_seek:ui/hp_bar/3/10