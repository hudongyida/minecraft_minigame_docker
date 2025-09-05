#乗っていなければ中断
execute unless entity @s[predicate=hide_and_seek:is_riding_tamed] run return 0


#vehicle_bar_1
function hide_and_seek:ui/vehicle_bar/1/
#vehicle_bar_2
#function hide_and_seek:ui/vehicle_bar/2/
#vehicle_bar_string
function hide_and_seek:ui/vehicle_bar/string/

#結合
function hide_and_seek:ui/vehicle_bar/combine with storage macro: ui