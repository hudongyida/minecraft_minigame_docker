scoreboard players add @s aj.jail_cell.animation.open.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.jail_cell.animation.open.local_anim_time
function animated_java:jail_cell/zzzzzzzz/animations/open/apply_frame_as_root
execute if score @s aj.jail_cell.animation.open.local_anim_time matches 10.. run function animated_java:jail_cell/zzzzzzzz/animations/open/end