scoreboard players set #GameManager check 1
#検索
$execute unless score #GameManager pair_UUID0_$(pair_id) = @s pair_UUID0_$(pair_id) run scoreboard players set #GameManager check 0
$execute unless score #GameManager pair_UUID1_$(pair_id) = @s pair_UUID1_$(pair_id) run scoreboard players set #GameManager check 0
$execute unless score #GameManager pair_UUID2_$(pair_id) = @s pair_UUID2_$(pair_id) run scoreboard players set #GameManager check 0
$execute unless score #GameManager pair_UUID3_$(pair_id) = @s pair_UUID3_$(pair_id) run scoreboard players set #GameManager check 0
#targetタグを付与
execute if score #GameManager check matches 1 run tag @s add target