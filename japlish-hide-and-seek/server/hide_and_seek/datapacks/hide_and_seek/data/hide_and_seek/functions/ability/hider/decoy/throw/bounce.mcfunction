execute as @s[tag=motion_x] store result storage item: motion double 0.001 run data get entity @s Motion[0] 1000
execute as @s[tag=motion_x] at @s if data storage item: {motion:0d} run function hide_and_seek:ability/hider/decoy/throw/summon_decoy

execute as @s[tag=motion_y] store result storage item: motion double 0.001 run data get entity @s Motion[1] 1000
execute as @s[tag=motion_y] at @s if data storage item: {motion:0d} run function hide_and_seek:ability/hider/decoy/throw/summon_decoy

execute as @s[tag=motion_z] store result storage item: motion double 0.001 run data get entity @s Motion[2] 1000
execute as @s[tag=motion_z] at @s if data storage item: {motion:0d} run function hide_and_seek:ability/hider/decoy/throw/summon_decoy

data modify entity @s Item.tag.Motion set from entity @s Motion