$tellraw @a [{"selector":"@n[scores={playerid=$(playerid)}]"},{"translate": "item.nano_boost.administer_chat", "with": [{"selector": "@s"}]}]
title @s actionbar {"translate": "item.nano_boost.administer_message"}
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.5 0.3 0.05 10 force
execute as @s anchored eyes positioned ^ ^ ^ run particle minecraft:flash ~ ~ ~ 0.15 0.15 0.15 1 10 force


effect give @s minecraft:strength 10 1 false
effect give @s minecraft:speed 10 1 false
effect give @s minecraft:haste 10 1 false
effect give @s minecraft:glowing 10 1 false
effect give @s minecraft:absorption 10 1 false
scoreboard players set @s item.nano_boost.other_effects 200

execute as @s at @s run function it:tech/active/nano_boost/functions/sounds
$execute as @n[scores={playerid=$(playerid)}] at @s run function it:tech/active/nano_boost/functions/sounds