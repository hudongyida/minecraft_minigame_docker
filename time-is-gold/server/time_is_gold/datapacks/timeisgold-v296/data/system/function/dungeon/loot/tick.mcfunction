execute if score #SYSTEM dungeon.loot.reset_tick matches 1.. run scoreboard players remove #SYSTEM dungeon.loot.reset_tick 1

execute unless score #SYSTEM dungeon.loot.reset_tick matches 1.. run function system:dungeon/loot/set_value/init
execute unless score #SYSTEM dungeon.loot.reset_tick matches 1.. run scoreboard players set #SYSTEM dungeon.loot.reset_tick 100