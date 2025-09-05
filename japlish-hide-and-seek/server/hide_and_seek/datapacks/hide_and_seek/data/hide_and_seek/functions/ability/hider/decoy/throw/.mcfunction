#アイテムを飛ばす
execute anchored eyes run summon item ^ ^ ^ {Item:{id:"minecraft:netherite_block",Count:1b,tag:{CustomModelData:1}},Health:1s,PickupDelay:10000,Tags:["decoy_item","not_yet"],NoGravity:false,Age:0}
data modify entity @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] Thrower set from entity @s UUID
damage @e[type=item,limit=1,sort=nearest,tag=decoy_item,tag=not_yet] 0.0
execute rotated as @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1 {Tags:["decoy_item_motion"]}
#仕様変更により一旦モーションの代入を封印
#execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=decoy_item_motion,limit=1] Pos
kill @e[type=area_effect_cloud,tag=decoy_item_motion,limit=1]


#壁や床に当たった時に消滅するための例外処理
execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] store result storage item: motion double 0.001 run data get entity @s Motion[0] 1000
execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] unless data storage item: {motion:0d} run tag @s add motion_x

execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] store result storage item: motion double 0.001 run data get entity @s Motion[1] 1000
execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] unless data storage item: {motion:0d} run tag @s add motion_y

execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] store result storage item: motion double 0.001 run data get entity @s Motion[2] 1000
execute as @e[type=item,tag=decoy_item,tag=not_yet,limit=1,sort=nearest] unless data storage item: {motion:0d} run tag @s add motion_z


#回転データを保存
# 自身の拟态ブロックを検索
data modify storage macro: find_pair_entity.pair_id set value "1"
data modify storage macro: find_pair_entity.target_entities set value "@e[type=block_display,tag=disguise_block]"
function hide_and_seek:.util/find_pair_entity/
# block_stateを保存
data modify entity @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] Item.tag.block_state set from entity @e[type=block_display,tag=target,sort=nearest,limit=1] block_state
# ブロックの回転データを保存
execute store result score @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] disguise_block_rotation_4 run data get entity @e[type=block_display,tag=target,sort=nearest,limit=1] Rotation[0]
# 回転モードを代入
execute as @s[scores={disguise_block_rotation_lock=0}] run scoreboard players set @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] disguise_block_rotation_lock 0
execute as @s[scores={disguise_block_rotation_lock=1}] run scoreboard players set @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] disguise_block_rotation_lock 1
# スニークしているか否か
execute as @s[predicate=!hide_and_seek:is_sneaking] run tag @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] add no_sneaking
execute as @s[predicate=hide_and_seek:is_sneaking] run tag @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] add is_sneaking


#処理終了
tag @e[type=item,tag=decoy_item,tag=not_yet,sort=nearest,limit=1] remove not_yet
tag @e[type=block_display,tag=target] remove target

#演出等
