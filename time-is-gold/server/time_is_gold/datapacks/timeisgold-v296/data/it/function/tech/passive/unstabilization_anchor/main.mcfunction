execute as @a run function it:tech/utils/detect/slot {slot:6, item_tag:unstabilization_anchor, tag:item.unstabilization_anchor.active}

scoreboard players reset @a[scores={item.unstabilization_anchor.active=1}] item.unstabilization_anchor.active
execute as @a[tag=item.unstabilization_anchor.active] run scoreboard players set @s item.unstabilization_anchor.active 1

tag @a[tag=item.unstabilization_anchor.active] remove item.unstabilization_anchor.active