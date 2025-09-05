execute as @a run function it:tech/utils/detect/slot {slot:8,item_tag:real_time_projectile_interceptor,tag:item.real_time_projectile_interceptor.active}
execute as @a[tag=!item.real_time_projectile_interceptor.active,scores={item.real_time_projectile_interceptor.active=1}] run scoreboard players reset @s item.real_time_projectile_interceptor.active

execute as @a[tag=item.real_time_projectile_interceptor.active] run function it:tech/passive/real_time_projectile_interceptor/functions/tick
execute as @a[tag=item.real_time_projectile_interceptor.active] run tag @s remove item.real_time_projectile_interceptor.active