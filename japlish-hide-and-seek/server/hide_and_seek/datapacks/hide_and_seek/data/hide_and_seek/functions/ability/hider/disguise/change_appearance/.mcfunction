# 対象を検索
data modify storage macro: find_pair_entity.pair_id set value "1"
data modify storage macro: find_pair_entity.target_entities set value "@e[type=block_display,tag=disguise_block]"
function hide_and_seek:.util/find_pair_entity/

#ブロックデータをディスプレイに代入
$execute store success storage macro: block_data.error int 1 run data modify entity @e[type=minecraft:block_display,tag=disguise_block,tag=target,limit=1,sort=nearest] block_state set value $(block_state)
#データの更新があった場合にパーティクルを表示
execute unless data storage macro: block_data{error:0} at @s run function hide_and_seek:ability/hider/disguise/particles/player/disguisie

# タグを削除
tag @e[type=minecraft:block_display,tag=disguise_block,tag=target] remove target

#storageを初期化
data remove storage macro: block_data.block_state
data remove storage macro: block_data.error

