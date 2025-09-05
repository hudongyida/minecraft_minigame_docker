title @s actionbar {"translate": "item.nano_boost.administer_message"}
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.5 0.3 0.05 10 force
execute as @s anchored eyes positioned ^ ^ ^ run particle minecraft:flash ~ ~ ~ 0.15 0.15 0.15 1 10 force


effect give @s minecraft:strength 5 1 false
effect give @s minecraft:speed 5 1 false
effect give @s minecraft:haste 5 1 false
effect give @s minecraft:glowing 5 1 false
effect give @s minecraft:absorption 5 1 false
scoreboard players set @s item.nano_boost.other_effects 100

execute as @s at @s run function it:tech/active/nano_boost/functions/sounds