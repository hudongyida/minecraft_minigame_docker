#アイテム用意
$execute if data storage macro: throw_snowball{ride:"true"} run execute anchored eyes run summon snowball ^ ^0.25 ^ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:$(model)}},Tags:["$(tag)","not_yet"],NoGravity:$(gravity),Passengers:[{id:"minecraft:item_display",$(ride_contents),Tags:["$(tag)_passenger","not_yet"]}]}
$execute if data storage macro: throw_snowball{ride:"false"} run execute anchored eyes run summon snowball ^ ^0.25 ^ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:$(model)}},Tags:["$(tag)","not_yet"],NoGravity:$(gravity)}

#rideしたitem_displayの向きを実行者に合わせる
$execute if data storage macro: throw_snowball{ride:"true"} run data modify entity @e[type=item_display,tag=$(tag)_passenger,tag=not_yet,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
#item_displayと投擲者のエンティティを紐づけ
#ペアのナンバリングを指定
data modify storage macro: pair_up.pair_id set value "3"
#対象のエンティティ1
data modify storage macro: pair_up.entity_1 set value "@s"
#対象のエンティティ2
$data modify storage macro: pair_up.entity_2 set value "@e[type=item_display,tag=$(tag)_passenger,tag=not_yet,limit=1,sort=nearest]"
#関数を実行
function hide_and_seek:.util/pair_up/

#投擲者を記録
$data modify entity @e[type=snowball,tag=$(tag),tag=not_yet,sort=nearest,limit=1] Owner set from entity @s UUID
#位置反映のためのダメージ
$damage @e[type=snowball,limit=1,sort=nearest,tag=$(tag),tag=not_yet] 0.0

#ベクトル計算
$summon area_effect_cloud ^ ^ ^$(motion) {Tags:["$(tag)_motion"]}
#x(reserve_1)
$execute store result score @s reserve_1 run data get entity @e[type=area_effect_cloud,tag=$(tag)_motion,limit=1] Pos[0] 100
execute store result score @s reserve_2 run data get entity @s Pos[0] 100
scoreboard players operation @s reserve_1 -= @s reserve_2
#y(reserve_2)
$execute store result score @s reserve_2 run data get entity @e[type=area_effect_cloud,tag=$(tag)_motion,limit=1] Pos[1] 100
execute store result score @s reserve_3 run data get entity @s Pos[1] 100
scoreboard players operation @s reserve_2 -= @s reserve_3
#z(reserve_3)
$execute store result score @s reserve_3 run data get entity @e[type=area_effect_cloud,tag=$(tag)_motion,limit=1] Pos[2] 100
execute store result score @s reserve_4 run data get entity @s Pos[2] 100
scoreboard players operation @s reserve_3 -= @s reserve_4
#Motion代入
$execute store result entity @e[type=snowball,tag=$(tag),tag=not_yet,limit=1,sort=nearest] Motion[0] double 0.01 run scoreboard players get @s reserve_1
$execute store result entity @e[type=snowball,tag=$(tag),tag=not_yet,limit=1,sort=nearest] Motion[1] double 0.01 run scoreboard players get @s reserve_2
$execute store result entity @e[type=snowball,tag=$(tag),tag=not_yet,limit=1,sort=nearest] Motion[2] double 0.01 run scoreboard players get @s reserve_3


#おかたづけ
$kill @e[type=area_effect_cloud,tag=$(tag)_motion,limit=1]
$tag @e[type=item_display,tag=$(tag)_passenger,tag=not_yet,limit=1,sort=nearest] remove not_yet

#必ずnot_yetを後で消す