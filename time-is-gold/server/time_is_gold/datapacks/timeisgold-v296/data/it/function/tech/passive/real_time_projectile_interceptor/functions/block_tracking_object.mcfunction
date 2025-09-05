execute as @s[tag=monsters.arrow_reflected] run return fail
execute as @s store result score @s item.real_time_projectile_interceptor.chance run random value 1..100
execute as @s if score @s item.real_time_projectile_interceptor.chance matches 90.. at @s run return run tag @s add monsters.arrow_reflected

scoreboard players set @s monsters.utils.tracking_object.terminate_check 1
scoreboard players set @s monsters.utils.tracking_object.reflection_count -1

function it:tech/passive/real_time_projectile_interceptor/functions/effects