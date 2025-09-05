#HPを保存
scoreboard players operation @s reserve_1 = #UI max_hp
#表示するゲージを特定
execute if score @s HP = @s reserve_1 run return run data modify storage macro: ui.hp_bar_1 set value "uE0A6"
scoreboard players operation @s reserve_1 -= #GameManager hp_range
execute if score @s HP >= @s reserve_1 run return run data modify storage macro: ui.hp_bar_1 set value "uE0A5"
scoreboard players operation @s reserve_1 -= #GameManager hp_range
execute if score @s HP >= @s reserve_1 run return run data modify storage macro: ui.hp_bar_1 set value "uE0A4"
scoreboard players operation @s reserve_1 -= #GameManager hp_range
execute if score @s HP >= @s reserve_1 run return run data modify storage macro: ui.hp_bar_1 set value "uE0A3"
scoreboard players operation @s reserve_1 -= #GameManager hp_range
execute if score @s HP >= @s reserve_1 run return run data modify storage macro: ui.hp_bar_1 set value "uE0A2"
data modify storage macro: ui.hp_bar_1 set value "uE0B1"