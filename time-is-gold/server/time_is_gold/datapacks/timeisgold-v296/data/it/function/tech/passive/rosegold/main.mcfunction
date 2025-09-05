execute as @a run function it:tech/utils/detect/slot {slot:8, item_tag:rosegold, tag:item.rosegold.active}
execute as @a[tag=item.rosegold.active] run scoreboard players set @s item.rosegold.active 1
execute as @a[tag=!item.rosegold.active] if score @s item.rosegold.active matches 1.. run scoreboard players set @s item.rosegold.active 0
tag @a[tag=item.rosegold.active] remove item.rosegold.active