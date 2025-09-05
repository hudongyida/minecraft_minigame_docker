#エリアを収縮
function hide_and_seek:.util/move_worldborder/6 with storage macro: move_worldborder
#タイマーを進行
scoreboard players remove #GameManager worldborder_move_timer 1
#タイマーが0ならゲームの状態を更新
execute if score #GameManager worldborder_move_timer matches ..0 run data modify storage sys: stage.worldborder.ring_closing set value "false"


#エリア収縮中でないならゲームの状態を更新
execute unless data storage sys: stage.worldborder{ring_closing:"true"} run function hide_and_seek:.util/move_worldborder/7
#エリア収縮中なら再帰
execute if data storage sys: stage.worldborder{ring_closing:"true"} run schedule function hide_and_seek:.util/move_worldborder/.tick_1 1t
