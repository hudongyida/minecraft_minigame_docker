#中心位置となり得る範囲を求める
# 古いworldborderの半径を取得
execute store result score #GameManager reserve_1 run worldborder get
scoreboard players set #GameManager reserve_3 2
scoreboard players operation #GameManager reserve_1 /= #GameManager reserve_3
# 新しいworldborderの半径を取得
$scoreboard players set #GameManager reserve_2 $(diameter)
scoreboard players operation #GameManager reserve_2 /= #GameManager reserve_3

#ランダムにポイントを決定
# X
execute store result score #GameManager reserve_3 run data get entity @e[type=marker,tag=worldborder_new,limit=1] Pos[0]
scoreboard players operation #GameManager reserve_3 -= #GameManager reserve_1
scoreboard players operation #GameManager reserve_4 = #GameManager reserve_3
# 最低
scoreboard players operation #GameManager reserve_3 += #GameManager reserve_2
execute store result storage macro: move_worldborder.ran_1 int 1 run scoreboard players get #GameManager reserve_3
# 最高
scoreboard players operation #GameManager reserve_4 += #GameManager reserve_1
scoreboard players operation #GameManager reserve_4 += #GameManager reserve_1
scoreboard players operation #GameManager reserve_4 -= #GameManager reserve_2
execute store result storage macro: move_worldborder.ran_2 int 1 run scoreboard players get #GameManager reserve_4
# ランダム実行
function hide_and_seek:.util/move_worldborder/2 with storage macro: move_worldborder

# Y
execute store result score #GameManager reserve_3 run data get entity @e[type=marker,tag=worldborder_new,limit=1] Pos[2]
scoreboard players operation #GameManager reserve_3 -= #GameManager reserve_1
scoreboard players operation #GameManager reserve_4 = #GameManager reserve_3
# 最低
scoreboard players operation #GameManager reserve_3 += #GameManager reserve_2
execute store result storage macro: move_worldborder.ran_1 int 1 run scoreboard players get #GameManager reserve_3
# 最高
scoreboard players operation #GameManager reserve_4 += #GameManager reserve_1
scoreboard players operation #GameManager reserve_4 += #GameManager reserve_1
scoreboard players operation #GameManager reserve_4 -= #GameManager reserve_2
execute store result storage macro: move_worldborder.ran_2 int 1 run scoreboard players get #GameManager reserve_4
# ランダム実行
function hide_and_seek:.util/move_worldborder/3 with storage macro: move_worldborder


#移動フェイズ
function hide_and_seek:.util/move_worldborder/4 with storage macro: move_worldborder

