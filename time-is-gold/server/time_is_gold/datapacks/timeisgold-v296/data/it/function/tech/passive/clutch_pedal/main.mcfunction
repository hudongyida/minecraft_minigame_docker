execute as @a run function it:tech/utils/detect/slot {item:tripwire_hook, item_tag:clutch_pedal, tag:item.clutch_pedal.active, slot:8}
execute as @a if score @s item.clutch_pedal.range matches 1 run scoreboard players reset @s item.clutch_pedal.range

# Speed
execute as @a[tag=item.clutch_pedal.active] unless predicate it:passive/clutch_pedal_movement run scoreboard players set @s item.clutch_pedal.range 1

tag @a[tag=item.clutch_pedal.active] remove item.clutch_pedal.active