execute as @a run function it:tech/utils/detect/slot {item:crafter, item_tag:counter_counter, slot:8, tag:item.counter_counter.active}
execute as @a[tag=item.counter_counter.active] run function it:tech/passive/counter_counter/operation
execute as @a[tag=!item.counter_counter.active] if score @s item.counter_counter.damage_bonus matches 1.. run scoreboard players reset @s item.counter_counter.damage_bonus
tag @a[tag=item.counter_counter.active] remove item.counter_counter.active