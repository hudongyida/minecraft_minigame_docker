#スコアボードを用意
scoreboard players operation @s reserve_1 = @s MP 
scoreboard players set @s reserve_2 20

#現在のMPを算出
scoreboard players operation @s reserve_1 /= @s reserve_2
execute store result storage macro: ui.mp_bar_string int 1 run scoreboard players get @s reserve_1

#文字数を揃える
execute unless score @s reserve_1 matches 100 run function hide_and_seek:ui/mp_bar/string/1 with storage macro: ui