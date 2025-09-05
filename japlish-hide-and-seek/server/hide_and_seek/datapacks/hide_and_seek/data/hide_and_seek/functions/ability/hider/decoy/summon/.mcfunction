# 自身の拟态ブロックを検索
data modify storage macro: find_pair_entity.pair_id set value "1"
data modify storage macro: find_pair_entity.target_entities set value "@e[type=block_display,tag=disguise_block]"
function hide_and_seek:.util/find_pair_entity/

#诱饵を召喚
execute store result storage macro: decoy.rotation int 1 run scoreboard players get @e[tag=summoning,limit=1,sort=nearest] disguise_block_rotation_4
function hide_and_seek:ability/hider/decoy/summon/decoy with storage macro: decoy

# 保存したブロックデータを代入
data modify entity @e[tag=decoy_block,tag=not_yet,sort=nearest,limit=1] block_state set from entity @e[tag=summoning,limit=1,sort=nearest] Item.tag.block_state

# 回転データを诱饵に代入
function hide_and_seek:ability/hider/decoy/tp/rotation/set_rotation_data

# 2体のエンティティを紐づけ
#ペアのナンバリングを指定
data modify storage macro: pair_up.pair_id set value "1"
#対象のエンティティ1
data modify storage macro: pair_up.entity_1 set value "@e[type=ocelot,tag=decoy,tag=decoy_operator,tag=not_yet,limit=1,sort=nearest]"
#対象のエンティティ2
data modify storage macro: pair_up.entity_2 set value "@e[type=block_display,tag=decoy,tag=decoy_block,tag=not_yet,limit=1,sort=nearest]"
#関数を実行
function hide_and_seek:.util/pair_up/

# 処理後のおかたづけ
tag @e[type=block_display,tag=target] remove target
tag @e[type=ocelot,tag=decoy,tag=decoy_operator,tag=not_yet] remove not_yet
tag @e[type=block_display,tag=decoy,tag=decoy_block,tag=not_yet] remove not_yet

