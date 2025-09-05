execute as @a run function it:tech/utils/detect/slot {item_tag:bunnyhop, tag:item.bunnyhop.active, slot:7}

execute as @a[tag=item.bunnyhop.active] run scoreboard players set @s item.bunnyhop.active 1
execute as @a[scores={item.bunnyhop.active=1}] unless entity @s[tag=item.bunnyhop.active] run scoreboard players reset @s item.bunnyhop.active
execute as @a[tag=item.bunnyhop.active] run tag @s remove item.bunnyhop.active