#function it:tech/utils/detect/crossbow/fire {advancement:"it:ranged/modified_chain_crossbow_fire", item:"modified_chain_crossbow", path:"it:tech/ranged/modified_chain_crossbow/crossbow/use"}

execute as @s store result score @s item.modified_chain_crossbow.chain_arrow run data get entity @s SelectedItem.components."minecraft:custom_data".chain_arrow
execute as @s if score @s item.modified_chain_crossbow.chain_arrow matches 1.. run function it:tech/ranged/modified_chain_crossbow/crossbow/chain

execute as @s run advancement revoke @s only it:ranged/modified_chain_crossbow_fire