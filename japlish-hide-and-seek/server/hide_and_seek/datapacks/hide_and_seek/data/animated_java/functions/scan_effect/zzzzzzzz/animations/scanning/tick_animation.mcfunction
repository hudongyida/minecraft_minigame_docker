scoreboard players add @s aj.scan_effect.animation.scanning.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.scan_effect.animation.scanning.local_anim_time
function animated_java:scan_effect/zzzzzzzz/animations/scanning/apply_frame_as_root
execute if score @s aj.scan_effect.animation.scanning.local_anim_time matches 20.. run function animated_java:scan_effect/zzzzzzzz/animations/scanning/end