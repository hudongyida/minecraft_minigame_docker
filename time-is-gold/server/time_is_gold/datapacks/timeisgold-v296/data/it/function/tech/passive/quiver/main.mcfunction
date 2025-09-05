#function it:tech/utils/detect/slot {item:flower_pot,slot:5,item_tag:quiver,tag:item.quiver.use}

#execute as @a[tag=item.quiver.use] if score @s item.quiver.used_bow matches 1.. run tag @s add item.quiver.chance
#execute as @a[tag=item.quiver.use] if score @s item.quiver.used_crossbow matches 1.. run tag @s add item.quiver.chance
#execute as @a[tag=item.quiver.use] if entity @s[tag=item.quiver.chance] run function it:tech/passive/quiver/functions/chance
#execute as @a[tag=item.quiver.use] run tag @s remove item.quiver.use

#execute as @a if score @s item.quiver.used_bow matches 1.. run scoreboard players reset @s item.quiver.used_bow
#execute as @a if score @s item.quiver.used_bow matches 1.. run scoreboard players reset @s item.quiver.used_crossbow