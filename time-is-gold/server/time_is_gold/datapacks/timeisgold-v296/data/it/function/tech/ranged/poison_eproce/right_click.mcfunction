function it:tech/utils/detect/right_click {advancement:"it:ranged/poison_eproce_right_click", item_tag:poison_eproce, tag:item.poison_eproce.use, type:0}
tag @s[tag=item.poison_eproce.fail] remove item.poison_eproce.fail

execute as @s[tag=item.poison_eproce.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/ranged/poison_eproce/raycast_call
execute as @s[tag=item.poison_eproce.use] run function it:tech/utils/use_cost/time {cost:2}
execute as @s[tag=item.poison_eproce.use] at @s if predicate system:periodic_tick_3 run playsound minecraft:entity.puffer_fish.blow_out neutral @s ~ ~ ~ 1 0 0
execute as @s[tag=item.poison_eproce.use] run tag @s remove item.poison_eproce.use