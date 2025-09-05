# 対象を検索
#ペアのナンバリングを指定
data modify storage macro: find_pair_entity.pair_id set value "3"
#検索対象のエンティティ群を指定
data modify storage macro: find_pair_entity.target_entities set value "@a"
#関数を実行
function hide_and_seek:.util/find_pair_entity/

#ブロックに埋まらないように
execute positioned ^ ^ ^-0.5 run tp @a[tag=target,sort=nearest,limit=1] ~ ~ ~

#演出
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:block.wool.place master @a
playsound minecraft:entity.phantom.death master @a

# タグを削除
tag @a[tag=target] remove target

#自身をおかたづけ
kill @s