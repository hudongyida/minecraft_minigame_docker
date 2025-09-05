execute as @a run function it:tech/utils/detect/slot {slot:8, item_tag:wandering_soul, tag:item.wandering_soul.active}

execute as @a[tag=item.wandering_soul.active] if predicate system:periodic_tick_20 run function it:tech/passive/wandering_soul/functions/tick
execute as @a[tag=item.wandering_soul.active] run tag @s remove item.wandering_soul.active