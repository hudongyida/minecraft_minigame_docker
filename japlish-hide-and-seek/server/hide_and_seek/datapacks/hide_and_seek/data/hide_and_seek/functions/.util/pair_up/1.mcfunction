#エンティティ1のpair_UUIDにエンティティ2のUUIDを代入
$execute store result score $(entity_1) pair_UUID0_$(pair_id) run data get entity $(entity_2) UUID[0]
$execute store result score $(entity_1) pair_UUID1_$(pair_id) run data get entity $(entity_2) UUID[1]
$execute store result score $(entity_1) pair_UUID2_$(pair_id) run data get entity $(entity_2) UUID[2]
$execute store result score $(entity_1) pair_UUID3_$(pair_id) run data get entity $(entity_2) UUID[3]
#エンティティ2のpair_UUIDにエンティティ1のUUIDを代入
$execute store result score $(entity_2) pair_UUID0_$(pair_id) run data get entity $(entity_1) UUID[0]
$execute store result score $(entity_2) pair_UUID1_$(pair_id) run data get entity $(entity_1) UUID[1]
$execute store result score $(entity_2) pair_UUID2_$(pair_id) run data get entity $(entity_1) UUID[2]
$execute store result score $(entity_2) pair_UUID3_$(pair_id) run data get entity $(entity_1) UUID[3]
