execute as @a run function it:tech/utils/detect/slot {slot:7, item_tag:tiny_rocket, tag:item.tiny_rocket.active}

scoreboard players reset @a[scores={item.tiny_rocket.active=1}] item.tiny_rocket.active
execute as @a[tag=item.tiny_rocket.active] run scoreboard players set @s item.tiny_rocket.active 1

tag @a[tag=item.tiny_rocket.active] remove item.tiny_rocket.active