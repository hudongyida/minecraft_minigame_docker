# 不要なタグを削除
tag @s remove hider
tag @s remove seeker
# チームを抜ける
team leave @s

#エフェクトをクリア
effect clear @s

# 対象を検索
#ペアのナンバリングを指定
data modify storage macro: find_pair_entity.pair_id set value "1"
#検索対象のエンティティ群を指定
data modify storage macro: find_pair_entity.target_entities set value "@e[type=block_display,tag=disguise_block,tag=!decoy]"
#関数を実行
function hide_and_seek:.util/find_pair_entity/
# 拟态ブロックをキル
kill @e[type=block_display,tag=disguise_block,tag=!decoy,tag=target]


# HPを設定
execute store result score @s HP run data get storage settings: player.hp
# MPを設定
execute store result score @s MP run data get storage settings: player.mp


# アイテム系
clear @s
