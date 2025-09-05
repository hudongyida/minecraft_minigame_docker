scoreboard players set @s item.stopwatch.active 1
scoreboard players set @s system.time.stasis 1

execute if predicate system:periodic_tick_5 run particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~2.5 ~ 0.4 0.6 0.4 0.01 1
execute if predicate system:periodic_tick_10 run particle minecraft:falling_dust{block_state:"minecraft:lapis_block"} ~ ~2 ~ 0.3 0.5 0.3 0.01 1

execute at @s if predicate system:periodic_tick_60 run playsound minecraft:block.stone_button.click_on block @s ~ ~ ~ 1 2 0