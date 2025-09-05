execute as @a run function it:tech/utils/detect/slot {slot:6, item_tag:overclock_usb, tag:item.overclock_usb.active}

scoreboard players reset @a[scores={item.overclock_usb.active=1}] item.overclock_usb.active
execute as @a[tag=item.overclock_usb.active] run scoreboard players set @s item.overclock_usb.active 1

tag @a[tag=item.overclock_usb.active] remove item.overclock_usb.active