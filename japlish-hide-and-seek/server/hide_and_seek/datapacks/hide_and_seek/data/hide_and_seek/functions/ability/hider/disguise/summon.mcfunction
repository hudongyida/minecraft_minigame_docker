#拟态用ブロックディスプレイを召喚
summon block_display ~ ~ ~ {Tags:["disguise_block","not_yet"],transformation:{translation:[-0.5f,0.0001f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1}

# 2体のエンティティを紐づけ
#ペアのナンバリングを指定
data modify storage macro: pair_up.pair_id set value "1"
#対象のエンティティ1
data modify storage macro: pair_up.entity_1 set value "@s"
#対象のエンティティ2
data modify storage macro: pair_up.entity_2 set value "@e[type=block_display,tag=disguise_block,tag=not_yet,limit=1,sort=nearest]"
#関数を実行
function hide_and_seek:.util/pair_up/

tag @e[type=block_display,tag=disguise_block,tag=not_yet,limit=1,sort=nearest] remove not_yet