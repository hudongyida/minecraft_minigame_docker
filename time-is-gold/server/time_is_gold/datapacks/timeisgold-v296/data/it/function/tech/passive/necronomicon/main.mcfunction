execute as @a run function it:tech/utils/detect/in_inventory {item:necronomicon, output:item.necronomicon.active}

scoreboard players reset @a[scores={item.necronomicon.active=1}] item.necronomicon.active
execute as @a[tag=item.necronomicon.active] run scoreboard players set @s item.necronomicon.active 1

tag @a[tag=item.necronomicon.active] remove item.necronomicon.active