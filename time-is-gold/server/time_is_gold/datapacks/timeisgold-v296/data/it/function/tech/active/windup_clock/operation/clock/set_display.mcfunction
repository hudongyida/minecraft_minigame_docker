$execute as @n[type=item_display,tag=item.windup_clock.item_display.$(playeruuid),distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.displayuuid set from storage timeisgold:uuid_tokenizer output

tag @s remove item.windup_clock.marker.manager.uninitialized