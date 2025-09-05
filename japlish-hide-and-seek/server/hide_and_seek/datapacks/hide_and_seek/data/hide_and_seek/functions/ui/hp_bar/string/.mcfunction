#HPを代入
scoreboard players operation @s reserve_1 = @s HP
scoreboard players operation @s reserve_1 /= #GameManager hp_range
execute if score @s reserve_1 matches ..-1 run scoreboard players set @s reserve_1 0
execute store result storage macro: ui.hp_bar_string int 1 run scoreboard players get @s reserve_1