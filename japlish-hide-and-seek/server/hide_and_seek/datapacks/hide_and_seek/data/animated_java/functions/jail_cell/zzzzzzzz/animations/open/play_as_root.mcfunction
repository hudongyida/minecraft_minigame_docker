scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.jail_cell.animation.open.local_anim_time 0
scoreboard players set @s aj.jail_cell.animation.open.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:jail_cell/zzzzzzzz/animations/open/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.jail_cell.animation.open