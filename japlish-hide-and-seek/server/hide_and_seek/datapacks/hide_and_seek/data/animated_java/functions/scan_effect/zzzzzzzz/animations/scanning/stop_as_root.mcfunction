scoreboard players set @s aj.scan_effect.animation.scanning.local_anim_time 0
tag @s remove aj.scan_effect.animation.scanning
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.scan_effect.disable_command_keyframes
function animated_java:scan_effect/zzzzzzzz/animations/scanning/tree/leaf_0
tag @s remove aj.scan_effect.disable_command_keyframes