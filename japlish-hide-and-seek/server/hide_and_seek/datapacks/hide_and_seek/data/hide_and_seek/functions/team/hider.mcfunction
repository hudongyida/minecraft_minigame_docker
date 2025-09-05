# 不要なタグを削除
tag @s remove seeker
# チームに合流
team join hider
tag @s add hider

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

# 拟态ブロックを召喚
function hide_and_seek:ability/hider/disguise/summon


# アイテム系
clear @s

loot give @s loot hide_and_seek:ability/hider/disguise
loot give @s loot hide_and_seek:ability/hider/release
loot give @s loot hide_and_seek:ability/hider/rotation_lock
#loot give @s loot hide_and_seek:ability/hider/rotate_left
#loot give @s loot hide_and_seek:ability/hider/rotate_right
loot give @s loot hide_and_seek:ability/hider/decoy
loot give @s loot hide_and_seek:ability/hider/fly_hider



