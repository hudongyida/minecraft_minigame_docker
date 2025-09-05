# FLAG OF COMMAND
execute as @s at @s run tp @s ~ ~ ~ ~10 0
execute as @s at @s positioned ^ ^.2 ^5 run particle dust{color:[0, 1, 0], scale:1} ~ ~ ~ .1 .1 .1 0 4 force
execute as @s at @s positioned ^ ^.2 ^-5 run particle dust{color:[0, 1, 0], scale:1} ~ ~ ~ .1 .1 .1 0 4 force
execute as @s at @s positioned ^5 ^2 ^ run particle enchant ~ ~ ~ 0 0.5 0 0 3 force
execute as @s at @s positioned ^-5 ^2 ^ run particle enchant ~ ~ ~ 0 0.5 0 0 3 force
execute as @s at @s positioned ^ ^2.5 ^5 run particle dust{color:[0, 1, 0], scale:1} ~ ~ ~ .1 .1 .1 0 4 force
execute as @s at @s positioned ^ ^2.5 ^-5 run particle dust{color:[0, 1, 0], scale:1} ~ ~ ~ .1 .1 .1 0 4 force

# DURATION
execute as @s run scoreboard players add @s item.flag_of_command.duration 1
execute as @s if score @s item.flag_of_command.duration matches 100.. run playsound block.beacon.deactivate block @a ~ ~ ~ 1 1 0
execute as @s if score @s item.flag_of_command.duration matches 100.. on passengers run kill @s
execute as @s if score @s item.flag_of_command.duration matches 100.. run kill @s

# EFFECTS
execute at @s as @a[distance=..5] run effect give @s speed 5 3 false
execute at @s as @a[distance=..5] run scoreboard players set @s system.time.stasis 1
execute at @s as @a[distance=..5] run scoreboard players set @s item.flag_of_command.invincibility 1