execute as @a if score @s item.silent_faith.count_multiplier matches 1.. run scoreboard players reset @s item.silent_faith.count_multiplier
execute as @a run function it:tech/utils/count/item_in_inventory {scoreboard:item.silent_faith.count, item_tag:silent_faith}
execute as @a if score @s item.silent_faith.count matches 51.. run scoreboard players set @s item.silent_faith.count 50
execute as @a run scoreboard players operation @s item.silent_faith.count_multiplier = @s item.silent_faith.count
execute as @a if score @s item.silent_faith.count_multiplier matches 1.. run scoreboard players operation @s item.silent_faith.count_multiplier *= #30 scoreboardConstant