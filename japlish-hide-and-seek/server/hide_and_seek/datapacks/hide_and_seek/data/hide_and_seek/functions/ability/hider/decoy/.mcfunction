# MP判定
#消費mpを設定
execute store result storage macro: mp_judgment.mp int 1 run data get storage settings: ability.decoy.mp
#関数を実行
function hide_and_seek:.util/mp_judgment/
#MP不足
execute if data storage macro: mp_judgment{result:fail} run return run playsound minecraft:error master @s ~ ~ ~

# ディスプレイを検索
#ペアのナンバリングを指定
data modify storage macro: find_pair_entity.pair_id set value "1"
#検索対象のエンティティ群を指定
data modify storage macro: find_pair_entity.target_entities set value "@e[type=block_display,tag=disguise_block,tag=!decoy]"
#関数を実行
function hide_and_seek:.util/find_pair_entity/

#エラーメッセージ
execute if data entity @e[type=block_display,tag=disguise_block,tag=!decoy,tag=target,limit=1,sort=nearest] block_state{Name:"minecraft:air"} run return run playsound minecraft:error master @s ~ ~ ~

#MPゲージ用処理
scoreboard players operation @s MP_old = @s MP
scoreboard players set @s use_ability 0

#MPを消費
execute store result score @s reserve_1 run data get storage macro: mp_judgment.mp
scoreboard players operation @s MP -= @s reserve_1
scoreboard players reset @s reserve_1

#アイテムを投げる
function hide_and_seek:ability/hider/decoy/throw/


# タグを削除
tag @e[type=block_display,tag=disguise_block,tag=!decoy,tag=target] remove target