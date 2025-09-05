execute as @a run function it:tech/utils/detect/slot {item_tag:air_shotter, tag:item.air_shotter.active, slot:7}

execute as @a if score @s item.air_shotter.active matches 1.. run scoreboard players reset @s item.air_shotter.active
execute as @a[tag=item.air_shotter.active] if predicate it:passive/air_shotter_floating run scoreboard players add @s item.air_shotter.active 1
execute as @a[tag=item.air_shotter.active] run tag @s remove item.air_shotter.active