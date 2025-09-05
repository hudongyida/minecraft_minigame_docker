# 실행 인자: tracking_object

$execute positioned ~-4 ~-4 ~-4 run scoreboard players operation @e[type=item_display,tag=monsters.floor2.student_b.item_display.$(monsteruuid),dx=8,dy=8,dz=8] monsters.floor2.student_b.vfx_tick = @s monsters.utils.tracking_object.step
$execute positioned ~-4 ~-4 ~-4 as @e[type=item_display,tag=monsters.floor2.student_b.item_display.$(monsteruuid),dx=8,dy=8,dz=8] positioned ~4 ~4 ~4 run function monsters:tech/floor2/student_b/tracking_object/animation