$execute as @s at @s run function it:tech/$(type)/$(path)/tracking_object/$(endfunction) with entity @s data
$execute as @e[tag=item.utils.tracking_object.hit.$(selfuuid)] run tag @s remove item.utils.tracking_object.hit.$(selfuuid)

scoreboard players remove @s item.utils.tracking_object.reflection_count 1
execute as @s positioned ^ ^ ^ if score @s item.utils.tracking_object.step matches 1.. if score @s item.utils.tracking_object.reflection_count matches 0.. run function it:tech/utils/tracking_object/reflect with entity @s data

kill @s