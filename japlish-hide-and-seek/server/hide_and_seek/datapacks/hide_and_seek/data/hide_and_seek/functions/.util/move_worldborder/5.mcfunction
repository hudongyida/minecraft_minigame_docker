#ゲームの状態を更新
data modify storage sys: stage.worldborder.ring_closing set value "true"
#worldborderを更新
$worldborder set $(diameter) $(time)
#タイマーを設定
scoreboard objectives add worldborder_move_timer dummy
#時間をtickに変換して保存
$scoreboard players set #GameManager reserve_1 $(time)
scoreboard players set #GameManager reserve_2 20
scoreboard players operation #GameManager reserve_1 *= #GameManager reserve_2
scoreboard players operation #GameManager worldborder_move_timer = #GameManager reserve_1

#tick処理
function hide_and_seek:.util/move_worldborder/.tick_1