execute as @a run function it:tech/utils/detect/slot {slot:5, item_tag:space_helmet, tag:item.space_helmet.active}

scoreboard players reset @a[scores={item.space_helmet.active=1}] item.space_helmet.active
execute as @a[tag=item.space_helmet.active] run scoreboard players set @s item.space_helmet.active 1

tag @a[tag=item.space_helmet.active] remove item.space_helmet.active