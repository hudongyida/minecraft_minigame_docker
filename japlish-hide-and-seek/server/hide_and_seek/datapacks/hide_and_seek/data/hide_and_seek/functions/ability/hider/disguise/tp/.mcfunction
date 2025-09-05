# 対象を検索
data modify storage macro: find_pair_entity.pair_id set value "1"
data modify storage macro: find_pair_entity.target_entities set value "@a"
function hide_and_seek:.util/find_pair_entity/

# 条件でhiderをキル
#hpが0のhiderを処理
#execute if score @a[tag=hider,tag=target,sort=nearest,limit=1] HP matches ..0 run function hide_and_seek:ability/hider/disguise/kill/
#対象がいなければ自身をキル
#execute unless entity @a[tag=hider,tag=target] run kill @s


# tp
#位置
tp @s @a[tag=hider,tag=target,limit=1,sort=nearest]
#回転
function hide_and_seek:ability/hider/disguise/tp/rotation/

#block_idがminecraft:airの場合に透明化を解除
execute if data entity @s block_state{Name:"minecraft:air"} run effect clear @a[tag=target,limit=1,sort=nearest] invisibility
#block_idがminecraft:air以外の場合に透明化
execute unless data entity @s block_state{Name:"minecraft:air"} run effect give @a[tag=target,limit=1,sort=nearest] invisibility infinite 0 true

# タグを削除
tag @a[tag=hider,tag=target,limit=1,sort=nearest] remove target
