#タイマーを進行
execute if score #GameManager next_zone_timer matches 1.. run scoreboard players remove #GameManager next_zone_timer 1
#タイマーが0ならmarkerを召喚
execute if score #GameManager next_zone_timer matches ..0 run function hide_and_seek:.util/move_worldborder/9 with storage macro: move_worldborder
#タイマーリセット
execute if score #GameManager next_zone_timer matches ..0 run scoreboard players set #GameManager next_zone_timer 30

#マーカーを移動
function hide_and_seek:.util/move_worldborder/10

#範囲外のマーカーをキル
execute unless entity @e[type=marker,tag=particle_killer] run function hide_and_seek:.util/move_worldborder/11
execute as @e[type=marker,tag=particle_killer] at @s run kill @e[type=marker,tag=zone,tag=particle,distance=..1]

#マーカーを光らせる
execute as @e[type=marker,tag=zone,tag=particle] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a


#再帰処理
schedule function hide_and_seek:.util/move_worldborder/.tick_2 1t