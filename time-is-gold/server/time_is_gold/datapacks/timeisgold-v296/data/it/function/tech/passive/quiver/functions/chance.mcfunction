advancement revoke @s only it:passive/quiver
function it:tech/utils/detect/slot {item:flower_pot,slot:5,item_tag:quiver,tag:item.quiver.use}

execute as @s[tag=item.quiver.use] if predicate it:25pc run tag @s add item.quiver.get_arrow
execute as @s[tag=item.quiver.get_arrow] run give @s minecraft:arrow 1
execute as @s[tag=item.quiver.get_arrow] run title @s actionbar {"translate":"item.quiver.get_arrow"}
execute as @s[tag=item.quiver.get_arrow] at @s run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 1 1.2 0
tag @s remove item.quiver.use
tag @s remove item.quiver.get_arrow