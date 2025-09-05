execute as @a run function it:tech/utils/detect/in_inventory {item:metal_detector, output:item.metal_detector.active}
scoreboard players reset @a[scores={item.metal_detector.active=1}] item.metal_detector.active
execute as @a[tag=item.metal_detector.active] run scoreboard players set @s item.metal_detector.active 1
tag @a[tag=item.metal_detector.active] remove item.metal_detector.active