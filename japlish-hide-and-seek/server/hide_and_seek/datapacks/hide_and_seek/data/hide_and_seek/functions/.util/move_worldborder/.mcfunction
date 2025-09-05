#マクロで実行用 function hide_and_seek:.util/move_worldborder/
#移動時間(tick)       $(time)

#記述用---------------------------------------------------
# worldborder変動のための初期設定
#移動前座標にマーカー設置
#summon marker ~ ~ ~ {Tags:["worldborder_old","worldborder"]}
#移動後座標にマーカー設置
#summon marker ~ ~ ~ {Tags:["worldborder_new","worldborder"]}
#新しいworldborderの直径(整数)を設定
#data modify storage macro: move_worldborder.diameter set value xxx
#移動する時間(秒)を指定
#data modify storage macro: move_worldborder.time set value　xxx
#関数を実行
#function hide_and_seek:.util/move_worldborder/
#---------------------------------------------------------
#適当に不足分の変数を補う$(ran_1)..$(ran_2)
data modify storage macro: move_worldborder.ran_1 set value 0
data modify storage macro: move_worldborder.ran_2 set value 0
#メイン処理実行
function hide_and_seek:.util/move_worldborder/1 with storage macro: move_worldborder
#次の安置を表示
schedule clear hide_and_seek:.util/move_worldborder/.tick_2
function hide_and_seek:.util/move_worldborder/.display_next_zone with storage macro: move_worldborder


#function hide_and_seek:.util/move_worldborder/closing で起爆
