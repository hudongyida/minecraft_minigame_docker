function it:tech/utils/cooldown/tick {scoreboard:item.nano_boost.cooldown}
execute as @a if score @s item.nano_boost.other_effects matches 1.. at @s run function it:tech/active/nano_boost/functions/in_buff

# UI
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.nano_boost.cooldown, value_target:"@s", base:item.nano_boost.cooldown, base_target:"#MAX_VALUE", invert:1, item:nano_boost}