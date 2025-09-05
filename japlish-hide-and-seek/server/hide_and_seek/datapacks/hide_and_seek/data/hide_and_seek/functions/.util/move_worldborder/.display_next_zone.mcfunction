#まずおかたづけ
kill @e[tag=zone]

#新しいworldborderの範囲を求める
# 新しいworldborderの半径を取得
$scoreboard players set #GameManager reserve_1 $(diameter)000
scoreboard players set #GameManager reserve_2 2
scoreboard players operation #GameManager reserve_1 /= #GameManager reserve_2

#両端を求める
# X
execute store result score #GameManager reserve_2 run data get entity @e[type=marker,tag=worldborder_new,limit=1] Pos[0] 1000
scoreboard players operation #GameManager reserve_3 = #GameManager reserve_2
# 最低
scoreboard players operation #GameManager reserve_2 -= #GameManager reserve_1
execute store result storage macro: move_worldborder.next_X1 float 0.001 run scoreboard players get #GameManager reserve_2
# 最高
scoreboard players operation #GameManager reserve_3 += #GameManager reserve_1
execute store result storage macro: move_worldborder.next_X2 float 0.001 run scoreboard players get #GameManager reserve_3

# Y
execute store result score #GameManager reserve_2 run data get entity @e[type=marker,tag=worldborder_new,limit=1] Pos[2] 1000
scoreboard players operation #GameManager reserve_3 = #GameManager reserve_2
# 最低
scoreboard players operation #GameManager reserve_2 -= #GameManager reserve_1
execute store result storage macro: move_worldborder.next_Y1 float 0.001 run scoreboard players get #GameManager reserve_2
# 最高
scoreboard players operation #GameManager reserve_3 += #GameManager reserve_1
execute store result storage macro: move_worldborder.next_Y2 float 0.001 run scoreboard players get #GameManager reserve_3


#
function hide_and_seek:.util/move_worldborder/8 with storage macro: move_worldborder