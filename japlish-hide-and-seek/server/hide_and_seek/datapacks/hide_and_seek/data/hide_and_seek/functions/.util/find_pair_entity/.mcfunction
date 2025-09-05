#マクロで実行用 function hide_and_seek:.util/find_pair_entity/
#ペアのナンバリング         $(pair_id) 1 2
#検索対象のエンティティ群   $(target_entities) @e[type=villager]

#記述用---------------------------------------------
# 対象を検索
#ペアのナンバリングを指定
#data modify storage macro: find_pair_entity.pair_id set value ""
#検索対象のエンティティ群を指定
#data modify storage macro: find_pair_entity.target_entities set value ""
#関数を実行
#function hide_and_seek:.util/find_pair_entity/

# タグを削除
#tag @e[type= ,tag= ,tag=target] remove target
#---------------------------------------------------

function hide_and_seek:.util/find_pair_entity/check_1 with storage macro: find_pair_entity

#念のためおかたづけ
#data remove storage macro: find_pair_entity.pair_id
#data remove storage macro: find_pair_entity.target_entities