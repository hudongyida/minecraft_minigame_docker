execute unless score @s aj.jail_cell.rig_loaded = @s aj.jail_cell.rig_loaded run function animated_java:jail_cell/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:jail_cell/zzzzzzzz/animations/tick
function #animated_java:jail_cell/on_tick/as_root