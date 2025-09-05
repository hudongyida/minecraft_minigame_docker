execute if score @s monsters.floor1.miner_zombie.recharge matches 1.. run scoreboard players remove @s monsters.floor1.miner_zombie.recharge 1
execute if score @s monsters.floor1.miner_zombie.recharge matches ..0 at @s run function monsters:tech/floor1/miner_zombie/operation/recharge

execute as @s[tag=!miner_zombie.ability_enabled] if predicate system:periodic_tick_160 run tag @s add miner_zombie.ability_enabled
execute as @s[tag=!miner_zombie.ability_enabled] run return fail

execute if predicate monsters:floor1/miner_zombie_target run function monsters:tech/floor1/miner_zombie/operation/init