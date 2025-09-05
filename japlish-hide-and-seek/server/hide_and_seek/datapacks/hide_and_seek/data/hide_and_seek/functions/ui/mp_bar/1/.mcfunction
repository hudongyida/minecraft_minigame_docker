#title @a actionbar [{"text":"","font":"player_ui","color":"#4e5c24"},{"text":"\uE051\uE001\uE052"}]

#最終的なアウトプット
#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値

#事前準備済みの数値を代入
scoreboard players operation @s reserve_1 = #UI max_mp
scoreboard players operation @s reserve_2 = #UI max_mp_80
scoreboard players operation @s reserve_3 = #UI max_mp

#1
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/1
#2
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/2
#3
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/3
#4
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/4
#5
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/5
#6
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/6
#7
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/7
#8
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/8
#9
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/1/9
#10
function hide_and_seek:ui/mp_bar/1/10