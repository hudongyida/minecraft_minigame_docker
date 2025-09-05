scoreboard players set @s aj.jail_cell.animation.open.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.jail_cell.animation.open