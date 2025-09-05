execute as @a run function it:tech/utils/detect/slot {item_tag:burnt_skull, tag:item.burnt_skull.active, slot:8}

execute as @a[tag=item.burnt_skull.active] run scoreboard players set @s item.burnt_skull.active 1
execute as @a[scores={item.burnt_skull.active=1}] unless entity @s[tag=item.burnt_skull.active] run scoreboard players reset @s item.burnt_skull.active
execute as @a[tag=item.burnt_skull.active] run tag @s remove item.burnt_skull.active