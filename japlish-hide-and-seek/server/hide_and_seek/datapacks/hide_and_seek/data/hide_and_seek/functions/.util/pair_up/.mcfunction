#マクロで実行用 function hide_and_seek:.util/pair_up/
#ペアのナンバリング         $(pair_id) 1 2
#対象のエンティティ1   $(entity_1) @e[type=villager]
#対象のエンティティ2   $(entity_2) @e[type=villager]

#記述用---------------------------------------------------
# 2体のエンティティを紐づけ
#ペアのナンバリングを指定
#data modify storage macro: pair_up.pair_id set value ""
#対象のエンティティ1
#data modify storage macro: pair_up.entity_1 set value ""
#対象のエンティティ2
#data modify storage macro: pair_up.entity_2 set value ""
#関数を実行
#function hide_and_seek:.util/pair_up/
#---------------------------------------------------------

function hide_and_seek:.util/pair_up/1 with storage macro: pair_up

#念のためおかたづけ
#data remove storage macro: pair_up.pair_id
#data remove storage macro: pair_up.entity_1
#data remove storage macro: pair_up.entity_2