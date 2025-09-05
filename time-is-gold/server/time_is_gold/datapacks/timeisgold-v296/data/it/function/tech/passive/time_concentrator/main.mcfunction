execute as @a run function it:tech/utils/detect/in_inventory {item:time_concentrator, output:item.time_concentrator.active}

execute as @a[scores={item.time_concentrator.active=1}] run scoreboard players reset @s item.time_concentrator.active
execute as @a[tag=item.time_concentrator.active] run scoreboard players set @s item.time_concentrator.active 1

tag @a[tag=item.time_concentrator.active] remove item.time_concentrator.active