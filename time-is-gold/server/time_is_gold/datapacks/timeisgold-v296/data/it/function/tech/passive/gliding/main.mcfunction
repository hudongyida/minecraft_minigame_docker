execute as @a run function it:tech/utils/detect/slot {item:feather,slot:6,item_tag:gliding,tag:item.gliding.get_slot}

# Fall check
execute as @a[tag=item.gliding.fall_check] if function it:tech/passive/gliding/functions/on_ground run function it:tech/passive/gliding/fall
execute as @a[tag=item.gliding.fall_check] run tag @s remove item.gliding.fall_check

# Glide check
execute as @a if score @s item.gliding.active matches 1 run scoreboard players reset @s item.gliding.active
execute as @a[tag=item.gliding.get_slot] at @s run function it:tech/passive/gliding/functions/tick