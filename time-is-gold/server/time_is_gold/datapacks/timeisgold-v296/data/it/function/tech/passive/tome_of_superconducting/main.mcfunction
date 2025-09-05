execute as @a run function it:tech/utils/detect/hotbar {item_tag:tome_of_superconducting, tag:item.tome_of_superconducting.active}

scoreboard players reset @a[scores={item.tome_of_superconducting.active=1}] item.tome_of_superconducting.active
execute as @a[tag=item.tome_of_superconducting.active] run scoreboard players set @s item.tome_of_superconducting.active 1

tag @a[tag=item.tome_of_superconducting.active] remove item.tome_of_superconducting.active