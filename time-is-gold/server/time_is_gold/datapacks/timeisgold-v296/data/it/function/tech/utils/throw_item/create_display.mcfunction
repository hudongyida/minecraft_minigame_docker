# 실행 인자: item.utils.throw_item.marker

$execute positioned ^ ^ ^ run summon item_display ^ ^ ^ {item:{id:"minecraft:$(item)",count:1b}, Tags:[item.utils.throw_item.item_display, item.utils.throw_item.item_display.$(selfuuid), item.utils.throw_item.item_display.init_target.$(selfuuid)], teleport_duration:$(duration), interpolation_duration:1s}
$execute positioned ^ ^ ^ run data modify entity @n[type=item_display,tag=item.utils.throw_item.item_display.init_target.$(selfuuid),distance=..0.5] Rotation set from entity @s Rotation
$execute positioned ^ ^ ^ run data modify entity @n[type=item_display,tag=item.utils.throw_item.item_display.init_target.$(selfuuid),distance=..0.5] transformation.scale set value $(transformation_scale)
$execute positioned ^ ^ ^ run data modify entity @n[type=item_display,tag=item.utils.throw_item.item_display.init_target.$(selfuuid),distance=..0.5] transformation.left_rotation set value $(transformation_left_rotation)
$execute positioned ^ ^ ^ run data modify entity @n[type=item_display,tag=item.utils.throw_item.item_display.init_target.$(selfuuid),distance=..0.5] transformation.right_rotation set value $(transformation_right_rotation)
$execute positioned ^ ^ ^ run data modify entity @n[type=item_display,tag=item.utils.throw_item.item_display.init_target.$(selfuuid),distance=..0.5] transformation.transition set value $(transformation_transition)

$execute positioned ^ ^ ^ run tag @n[type=item_display,tag=item.utils.throw_item.item_display.init_target.$(selfuuid),distance=..0.5] remove item.utils.throw_item.item_display.init_target.$(selfuuid)