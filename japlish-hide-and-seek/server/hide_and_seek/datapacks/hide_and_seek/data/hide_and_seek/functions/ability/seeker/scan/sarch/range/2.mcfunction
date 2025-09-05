#スキル使用者を検索
#ペアのナンバリングを指定
data modify storage macro: find_pair_entity.pair_id set value "2"
#検索対象のエンティティ群を指定
data modify storage macro: find_pair_entity.target_entities set value "@a"
#関数を実行
function hide_and_seek:.util/find_pair_entity/


execute if entity @s[scores={ability_sarch_caught=1..}] as @a[tag=target,sort=nearest,limit=1] run tellraw @s "扫描范围内有一个。"

tag @a[tag=target,sort=nearest,limit=1] remove target

#自身をキル
function animated_java:scan_effect/remove/this