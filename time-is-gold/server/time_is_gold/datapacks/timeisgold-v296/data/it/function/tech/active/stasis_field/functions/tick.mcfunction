scoreboard players add @s item.stasis_field.step 1
execute as @s if score @s item.stasis_field.step matches 100.. run return run kill @s
tp @s ~ ~ ~ ~10 ~

particle minecraft:shriek{delay:1} ^ ^ ^5 0 0 0 1 1 force
particle minecraft:shriek{delay:1} ^ ^ ^-5 0 0 0 1 1 force

execute store result entity @s data.line float 0.1 run random value 1..10
function it:tech/active/stasis_field/functions/lines with entity @s data

particle minecraft:scrape ^ ^ ^-5 0 0.5 0 0 0 force
particle minecraft:scrape ^ ^ ^5 0 0.5 0 0 0 force
particle minecraft:scrape ^5 ^ ^ 0 0.5 0 0 0 force
particle minecraft:scrape ^-5 ^ ^ 0 0.5 0 0 0 force

execute as @s if score @s item.stasis_field.step matches 40 run function system:vfx/expand_circle/init {range:5, step:3, R:0.200, G:0.800, B:0.800}
execute as @s if score @s item.stasis_field.step matches 80 run function system:vfx/expand_circle/init {range:5, step:3, R:0.200, G:0.800, B:0.800}

particle dust{color:[0.200,0.800,0.800],scale:1} ~ ~ ~ 2 2 2 0 3 force

execute at @s as @e[tag=monster,distance=..5] if predicate it:20pc run function it:tech/active/stasis_field/functions/debuff
execute at @s if predicate it:20pc run playsound block.respawn_anchor.ambient block @a ~ ~ ~ 1 1 0