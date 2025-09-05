execute unless score @s aj.scan_effect.rig_loaded = @s aj.scan_effect.rig_loaded run function animated_java:scan_effect/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:scan_effect/zzzzzzzz/animations/tick
function #animated_java:scan_effect/on_tick/as_root