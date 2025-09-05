scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.scan_effect.animation.scanning.local_anim_time 0
scoreboard players set @s aj.scan_effect.animation.scanning.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:scan_effect/zzzzzzzz/animations/scanning/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.scan_effect.animation.scanning