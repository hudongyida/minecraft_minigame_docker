function it:tech/utils/cooldown/tick {scoreboard:item.windup_clock.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/windup_clock/display_ui

execute as @a if score @s item.windup_clock.delay matches 1.. run scoreboard players remove @s item.windup_clock.delay 1

execute as @a if score @s item.windup_clock.tick matches 1.. run scoreboard players remove @s item.windup_clock.tick 1

# SFX
execute as @a if score @s item.windup_clock.tick matches 1.. if predicate system:periodic_tick_20 at @s run playsound minecraft:block.vault.insert_item_fail block @s ~ ~ ~ 0.5 2
execute as @a if score @s item.windup_clock.tick matches 0 run function it:tech/active/windup_clock/operation/terminate

execute as @e[type=marker,tag=item.windup_clock.marker.manager] at @s run function it:tech/active/windup_clock/operation/step with entity @s data