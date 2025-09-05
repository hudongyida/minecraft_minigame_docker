#安置の両端にマーカーを設置
$summon marker $(next_X1) ~ $(next_Y1) {Tags:["next_zone_1","zone"]}
$summon marker $(next_X2) ~ $(next_Y2) {Tags:["next_zone_2","zone"]}

#タイマーを設定
scoreboard objectives add next_zone_timer dummy
scoreboard players set #GameManager next_zone_timer 30


#
function hide_and_seek:.util/move_worldborder/.tick_2