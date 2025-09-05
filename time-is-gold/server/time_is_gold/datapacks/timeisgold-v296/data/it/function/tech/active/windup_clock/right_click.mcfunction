function it:tech/utils/detect/right_click {advancement:"it:active/windup_clock_right_click", item_tag:windup_clock, tag:item.windup_clock.pre, type:0}

execute as @s[tag=item.windup_clock.pre] if score @s item.windup_clock.delay matches 1.. run return run tag @s remove item.windup_clock.pre
scoreboard players set @s item.windup_clock.delay 10
execute as @s[tag=item.windup_clock.pre] if score @s item.windup_clock.tick matches 1.. run function it:tech/active/windup_clock/operation/terminate

function it:tech/utils/cooldown/check {failTag:item.windup_clock.fail, passTag:item.windup_clock.use, inputTag:item.windup_clock.pre, scoreboard:item.windup_clock.cooldown, status:1}
tag @s[tag=item.windup_clock.fail] remove item.windup_clock.fail

execute as @s[tag=item.windup_clock.use] run scoreboard players set @s item.windup_clock.cooldown 123456789
execute as @s[tag=item.windup_clock.use] run scoreboard players set @s item.windup_clock.tick 200
execute as @s[tag=item.windup_clock.use] run scoreboard players set #MAX_VALUE item.windup_clock.tick 200

execute as @s[tag=item.windup_clock.use] run function it:tech/active/windup_clock/operation/init

# SFX
execute as @s[tag=item.windup_clock.use] at @s run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 0.5 1
execute as @s[tag=item.windup_clock.use] at @s run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 0.5 1

# VFX
execute as @s[tag=item.windup_clock.use] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.1 30 force

tag @s[tag=item.windup_clock.use] remove item.windup_clock.use