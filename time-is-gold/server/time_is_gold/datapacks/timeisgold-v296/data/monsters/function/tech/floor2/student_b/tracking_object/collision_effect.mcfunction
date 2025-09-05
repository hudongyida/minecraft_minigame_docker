execute at @s run playsound entity.item.break player @a ~ ~ ~ 0.25 1 0
execute at @s run particle crit ~ ~ ~ 0.05 0.05 0.05 1 5 force

$execute at @s positioned ~-2 ~-2 ~-2 as @e[type=item_display,tag=monsters.floor2.student_b.item_display.$(monsteruuid),dx=4,dy=4,dz=4] run kill @s