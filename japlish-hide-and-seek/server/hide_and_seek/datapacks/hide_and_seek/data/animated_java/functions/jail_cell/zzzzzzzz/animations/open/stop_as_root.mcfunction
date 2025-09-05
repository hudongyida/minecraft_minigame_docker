scoreboard players set @s aj.jail_cell.animation.open.local_anim_time 0
tag @s remove aj.jail_cell.animation.open
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.jail_cell.disable_command_keyframes
function animated_java:jail_cell/zzzzzzzz/animations/open/tree/leaf_0
tag @s remove aj.jail_cell.disable_command_keyframes