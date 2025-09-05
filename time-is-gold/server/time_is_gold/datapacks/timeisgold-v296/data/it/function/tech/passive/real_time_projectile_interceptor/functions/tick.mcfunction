execute as @s unless score @s item.real_time_projectile_interceptor.active matches 1 run scoreboard players set @s item.real_time_projectile_interceptor.active 1

execute as @s at @s positioned ~-2 ~-1 ~-2 as @e[type=#minecraft:arrows,dx=4,dy=4,dz=4,nbt={pickup:0b,inGround:false},tag=!monsters.arrow_reflected] unless score @s item.real_time_projectile_interceptor.chance matches 0.. run function it:tech/passive/real_time_projectile_interceptor/functions/modify_arrow
execute as @s at @s positioned ~-2 ~-1 ~-2 as @e[type=small_fireball,dx=4,dy=4,dz=4] if predicate it:90pc run kill @s