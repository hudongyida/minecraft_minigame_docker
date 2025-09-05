execute as @a if items entity @s armor.head *[custom_data~{item:deciphering_monocle}] run tag @s add item.deciphering_monocle.active

execute at @a[tag=item.deciphering_monocle.active] as @e[tag=monster,distance=..30] unless score @s item.deciphering_monocle.interval matches 1.. if function it:tech/passive/deciphering_monocle/functions/targeting run function it:tech/passive/deciphering_monocle/functions/apply
execute as @a[tag=item.deciphering_monocle.active] run tag @s remove item.deciphering_monocle.active