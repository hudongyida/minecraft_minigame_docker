# 対象を検索
data modify storage macro: find_pair_entity.pair_id set value "1"
data modify storage macro: find_pair_entity.target_entities set value "@e[type=ocelot,tag=hider]"
function hide_and_seek:.util/find_pair_entity/

# 条件で诱饵をキル
#hpが0の诱饵を処理
execute if score @e[type=ocelot,tag=hider,tag=target,sort=nearest,limit=1] HP matches ..0 run function hide_and_seek:ability/hider/decoy/kill/
#诱饵の寿命処理
scoreboard players remove @e[type=ocelot,tag=hider,tag=target] time 1
execute if score @e[type=ocelot,tag=hider,tag=target,sort=nearest,limit=1] time matches ..0 run function hide_and_seek:ability/hider/decoy/kill/
#対象がいなければ自身をキル
execute unless entity @e[type=ocelot,tag=hider,tag=target] run function hide_and_seek:ability/hider/decoy/kill/


# tp
#位置
tp @s @e[tag=hider,tag=target,limit=1,sort=nearest]
#回転
function hide_and_seek:ability/hider/decoy/tp/rotation/


# タグを削除
tag @e[type=ocelot,tag=hider,tag=target,limit=1,sort=nearest] remove target
