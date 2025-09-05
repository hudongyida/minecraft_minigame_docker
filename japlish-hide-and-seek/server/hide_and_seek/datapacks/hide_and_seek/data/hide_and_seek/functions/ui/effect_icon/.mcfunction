#effect_icon
# エフェクトが無ければスキップ
execute if entity @s[predicate=!hide_and_seek:effect/.no_effect] run return 0

function hide_and_seek:ui/effect_icon/1/

#結合
function hide_and_seek:ui/effect_icon/combine with storage macro: ui

