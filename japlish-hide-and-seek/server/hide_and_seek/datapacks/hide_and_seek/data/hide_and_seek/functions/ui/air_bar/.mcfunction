#air_bar
# 水中か否かを判定するためのマーカーを召喚
execute as @s positioned ~ ~1.62 ~ run summon marker ~ ~ ~ {Tags:["water_judgment"]}

function hide_and_seek:ui/air_bar/1/

#マーカーをおかたづけ
kill @e[type=marker,tag=water_judgment]

#結合
function hide_and_seek:ui/air_bar/combine with storage macro: ui
