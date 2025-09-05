$execute as @s at @s positioned ^ ^ ^$(radius) run particle dust{color:[$(R)f, $(G)f, $(B)f], scale:1} ~ ~ ~ 0 0 0 1 1 force
$execute as @s at @s run rotate @s ~$(angle) 0
scoreboard players add @s system.vfx.expand_circle.repeat_count 1

#say im repeating!

execute as @s at @s if score @s system.vfx.expand_circle.repeat_count < @s system.vfx.expand_circle.repeat run function system:vfx/expand_circle/draw_circle with entity @s data
scoreboard players reset @s system.vfx.expand_circle.repeat_count