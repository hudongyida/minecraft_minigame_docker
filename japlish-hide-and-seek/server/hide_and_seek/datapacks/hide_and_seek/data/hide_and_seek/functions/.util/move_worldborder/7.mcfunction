#エリア収縮中でない場合の処理
data modify storage sys: stage.worldborder.ring_closing set value "false"
kill @e[type=marker,tag=worldborder_move]