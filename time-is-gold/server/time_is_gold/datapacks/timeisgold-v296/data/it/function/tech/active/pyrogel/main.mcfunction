function it:tech/utils/cooldown/tick {scoreboard:item.pyrogel.cooldown}
execute as @e[type=marker,tag=item.pyrogel.marker] at @s run function it:tech/active/pyrogel/functions/tick

# UI
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.pyrogel.cooldown, value_target:"@s", base:item.pyrogel.cooldown, base_target:"#MAX_VALUE", invert:1, item:pyrogel}