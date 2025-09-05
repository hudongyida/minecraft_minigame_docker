#元の中心位置マーカーを更新
kill @e[type=marker,tag=worldborder_old]
tag @e[type=marker,tag=worldborder_new] add worldborder_old
tag @e[type=marker,tag=worldborder_new] remove worldborder_new

#新たに中心となる位置にマーカーを置く
$summon marker $(X) ~ $(Y) {Tags:["worldborder_new","worldborder"]}

#元の中心位置に移動用マーカーを設置
execute at @e[type=marker,tag=worldborder_old,limit=1] run summon marker ~ ~ ~ {Tags:["worldborder_move","worldborder"]}

#時間をtickに変換して保存
$scoreboard players set #GameManager reserve_1 $(time)
scoreboard players set #GameManager reserve_2 20
scoreboard players operation #GameManager reserve_1 *= #GameManager reserve_2

#座標2 - 座標1
#X座標
execute store result score #GameManager reserve_2 run data get entity @e[type=marker,tag=worldborder_new,limit=1] Pos[0] 100000
execute store result score #GameManager reserve_3 run data get entity @e[type=marker,tag=worldborder_old,limit=1] Pos[0] 100000
scoreboard players operation #GameManager reserve_2 -= #GameManager reserve_3
scoreboard players operation #GameManager reserve_2 /= #GameManager reserve_1
#execute if score #GameManager reserve_2 matches ..0 unless score #GameManager reserve_2 matches 0 run function hide_and_seek:.util/move_worldborder/2
execute store result storage macro: move_worldborder.move_X double 0.00001 run scoreboard players get #GameManager reserve_2

#Y座標
execute store result score #GameManager reserve_2 run data get entity @e[type=marker,tag=worldborder_new,limit=1] Pos[2] 100000
execute store result score #GameManager reserve_3 run data get entity @e[type=marker,tag=worldborder_old,limit=1] Pos[2] 100000
scoreboard players operation #GameManager reserve_2 -= #GameManager reserve_3
scoreboard players operation #GameManager reserve_2 /= #GameManager reserve_1
#execute if score #GameManager reserve_2 matches ..0 unless score #GameManager reserve_2 matches 0 run function hide_and_seek:.util/move_worldborder/2
execute store result storage macro: move_worldborder.move_Y double 0.00001 run scoreboard players get #GameManager reserve_2


#最終設定
#function hide_and_seek:.util/move_worldborder/5 with storage macro: move_worldborder










