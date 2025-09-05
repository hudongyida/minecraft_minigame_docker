#glowing
data modify storage macro: ui.effect_combine set value "h"

# 2つの文字列を結合
#結合される文字列を指定
data modify storage macro: combine_string.string_1 set from storage macro: ui.effect_icon
#結合する文字列を指定
data modify storage macro: combine_string.string_2 set from storage macro: ui.effect_combine
function hide_and_seek:.util/combine_string/

#結合後代入
data modify storage macro: ui.effect_icon set from storage macro: combine_string.string_result

#エフェクトの数を+1
scoreboard players add @s reserve_1 1