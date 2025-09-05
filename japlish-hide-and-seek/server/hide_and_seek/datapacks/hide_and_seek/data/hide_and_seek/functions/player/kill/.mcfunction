# まずは拟态ブロックをキル
#対象を検索
data modify storage macro: find_pair_entity.pair_id set value "1"
data modify storage macro: find_pair_entity.target_entities set value "@e[type=block_display,tag=disguise_block]"
function hide_and_seek:.util/find_pair_entity/
#対象をキル
kill @e[type=block_display,tag=disguise_block,tag=target]

#自分もキル
kill @s
#HPを再設定
scoreboard players set @s HP -10

#演出
particle crit ~ ~0.5 ~ 0 0 0 1 100 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.0 1 0.0