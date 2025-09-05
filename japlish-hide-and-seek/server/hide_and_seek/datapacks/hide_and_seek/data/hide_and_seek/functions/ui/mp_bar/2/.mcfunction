#title @a actionbar [{"text":"","font":"player_ui","color":"#4e5c24"},{"text":"\uE051\uE001\uE052"}]

#最終的なアウトプット
#reserve_1 全体
#reserve_2 全体/80
#reserve_3 各段階の最低値

#スキル使用タイミングを測定
execute if score @s use_ability matches ..14 run scoreboard players add @s use_ability 1
#MP_oldを減らす処理
execute if score @s use_ability matches 15 run scoreboard players remove @s MP_old 150


#事前準備済みの数値を代入
scoreboard players operation @s reserve_1 = #UI max_mp
scoreboard players operation @s reserve_2 = #UI max_mp_80
scoreboard players operation @s reserve_3 = #UI max_mp

#1
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/1
#2
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/2
#3
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/3
#4
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/4
#5
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/5
#6
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/6
#7
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/7
#8
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/8
#9
scoreboard players operation @s reserve_3 -= #UI max_mp_10
execute if score @s MP_old > @s reserve_3 run return run function hide_and_seek:ui/mp_bar/2/9
#10
function hide_and_seek:ui/mp_bar/2/10