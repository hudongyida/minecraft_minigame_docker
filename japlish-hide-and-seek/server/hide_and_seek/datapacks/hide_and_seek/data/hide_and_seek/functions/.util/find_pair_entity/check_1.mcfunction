#実行結果を初期化
scoreboard players set #GameManager check 0
#自身のUUIDをマネージャーに記録
$execute store result score #GameManager pair_UUID0_$(pair_id) run data get entity @s UUID[0]
$execute store result score #GameManager pair_UUID1_$(pair_id) run data get entity @s UUID[1]
$execute store result score #GameManager pair_UUID2_$(pair_id) run data get entity @s UUID[2]
$execute store result score #GameManager pair_UUID3_$(pair_id) run data get entity @s UUID[3]

#対象を検索
$execute as $(target_entities) if score #GameManager check matches 0 run function hide_and_seek:.util/find_pair_entity/check_2 with storage macro: find_pair_entity