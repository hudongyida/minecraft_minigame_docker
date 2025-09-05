execute as @s unless score @s item.pebble.count matches 1.. unless items entity @s container.* *[custom_data~{item:pebble}] run return fail
execute as @s run function it:tech/utils/count/item_in_inventory {scoreboard:item.pebble.count, item_tag:pebble}
execute as @s if score @s item.pebble.count matches 11.. run scoreboard players set @s item.pebble.count 10