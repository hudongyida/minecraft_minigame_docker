$execute as @s at @s run function $(path)/tracking_object/$(endfunction) with entity @s data
$execute as @e[tag=monsters.utils.tracking_object.hit.$(selfuuid)] run tag @s remove monsters.utils.tracking_object.hit.$(selfuuid)

scoreboard players remove @s monsters.utils.tracking_object.reflection_count 1
execute as @s positioned ^ ^ ^ if score @s monsters.utils.tracking_object.step matches 1.. if score @s monsters.utils.tracking_object.reflection_count matches 0.. run function monsters:tech/global/utils/tracking_object/reflect with entity @s data

kill @s