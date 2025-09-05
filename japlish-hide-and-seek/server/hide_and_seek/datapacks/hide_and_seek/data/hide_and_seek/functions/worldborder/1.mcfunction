#記述用---------------------------------------------------
# worldborder変動のための初期設定
#移動前座標にマーカー設置
#summon marker ~ ~ ~ {Tags:["worldborder_old","worldborder"]}
#移動後座標にマーカー設置
#summon marker ~ ~ ~ {Tags:["worldborder_new","worldborder"]}
#新しいworldborderの直径(整数)を設定
data modify storage macro: move_worldborder.diameter set value 90
#移動する時間(整数)を指定
data modify storage macro: move_worldborder.time set value 60
#関数を実行
function hide_and_seek:.util/move_worldborder/
#---------------------------------------------------------

function hide_and_seek:worldborder/anounce_1
schedule function hide_and_seek:.util/move_worldborder/.closing 1199t