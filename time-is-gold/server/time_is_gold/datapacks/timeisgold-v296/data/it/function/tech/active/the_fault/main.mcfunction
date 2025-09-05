function it:tech/utils/cooldown/tick {scoreboard:item.the_fault.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.the_fault.cooldown, value_target:"@s", base:item.the_fault.cooldown, base_target:"#MAX_VALUE", invert:1, item:the_fault}

execute as @e[tag=item.the_fault.applied] at @s run particle minecraft:warped_spore ~ ~ ~ .4 .4 .4 0.05 2 force
execute as @e[tag=item.the_fault.applied] at @s run particle minecraft:bubble_pop ~ ~ ~ .4 .4 .4 0.05 2 force