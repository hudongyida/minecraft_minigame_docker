function it:tech/utils/cooldown/tick {scoreboard:item.laboratory_slime.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.laboratory_slime.cooldown, value_target:"@s", base:item.laboratory_slime.cooldown, base_target:"#MAX_VALUE", invert:1, item:laboratory_slime}

execute as @e[type=block_display,tag=item.laboratory_slime.block_display] on vehicle if entity @s[nbt={Health:0f}] run function it:tech/active/laboratory_slime/on_death