execute as @a run function it:tech/utils/detect/slot {slot:7, item_tag:revelatory_record, tag:item.revelatory_record.active}
execute as @a[tag=item.revelatory_record.active] run scoreboard players set @s item.revelatory_record.active 1
execute as @a[scores={item.revelatory_record.active=1}] unless entity @s[tag=item.revelatory_record.active] run scoreboard players reset @s item.revelatory_record.active
execute as @a[tag=item.revelatory_record.active] run tag @s remove item.revelatory_record.active