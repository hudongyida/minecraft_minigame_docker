execute as @a run function it:tech/utils/detect/in_inventory {item:gauss_coil, output:item.gauss_coil.active}

scoreboard players reset @a[scores={item.gauss_coil.active=1}] item.gauss_coil.active
execute as @a[tag=item.gauss_coil.active] run scoreboard players set @s item.gauss_coil.active 1

tag @a[tag=item.gauss_coil.active] remove item.gauss_coil.active