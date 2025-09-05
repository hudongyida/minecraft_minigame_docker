execute as @s[tag=monsters.arrow_reflected] run return fail
execute as @s store result score @s item.real_time_projectile_interceptor.chance run random value 1..100
execute as @s if score @s item.real_time_projectile_interceptor.chance matches 90.. at @s run return run tag @s add monsters.arrow_reflected

$scoreboard players set $(selfuuid) monsters.utils.raycast.default.terminate_check 1

function it:tech/passive/real_time_projectile_interceptor/functions/effects