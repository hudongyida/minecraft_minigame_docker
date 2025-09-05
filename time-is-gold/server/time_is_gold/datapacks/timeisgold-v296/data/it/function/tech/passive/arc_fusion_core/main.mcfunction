execute as @a run function it:tech/utils/detect/slot {item:player_head, item_tag:arc_fusion_core, tag:item.arc_fusion_core.active, slot:7}
execute as @a[tag=item.arc_fusion_core.active] run scoreboard players set @s item.arc_fusion_core.active 1
execute as @a[tag=!item.arc_fusion_core.active] if score @s item.arc_fusion_core.active matches 1.. run scoreboard players reset @s item.arc_fusion_core.active
execute as @a[tag=item.arc_fusion_core.active] run tag @s remove item.arc_fusion_core.active