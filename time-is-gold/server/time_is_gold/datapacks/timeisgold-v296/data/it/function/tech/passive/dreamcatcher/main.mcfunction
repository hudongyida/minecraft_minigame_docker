execute as @a run function it:tech/utils/detect/in_inventory {item:dreamcatcher, output:item.dreamcatcher.active}
scoreboard players reset @a[scores={item.dreamcatcher.active=1}] item.dreamcatcher.active
execute as @a[tag=item.dreamcatcher.active] run scoreboard players set @s item.dreamcatcher.active 1
execute as @a[tag=item.dreamcatcher.active] run tag @s remove item.dreamcatcher.active