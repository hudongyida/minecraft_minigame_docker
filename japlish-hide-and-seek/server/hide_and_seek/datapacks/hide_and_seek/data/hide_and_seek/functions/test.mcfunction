kill @e[type=marker,tag=worldborder]
summon marker 0 0 0 {Tags:["worldborder_new","worldborder"]}
worldborder set 100
worldborder center 0 0

#記述用---------------------------------------------------
# worldborder変動のための初期設定
#移動前座標にマーカー設置
#summon marker ~ ~ ~ {Tags:["worldborder_old","worldborder"]}
#移動後座標にマーカー設置
#summon marker ~ ~ ~ {Tags:["worldborder_new","worldborder"]}
#新しいworldborderの直径(整数)を設定
data modify storage macro: move_worldborder.diameter set value 30
#移動する時間(整数)を指定
data modify storage macro: move_worldborder.time set value 5
#関数を実行
function hide_and_seek:.util/move_worldborder/
#---------------------------------------------------------