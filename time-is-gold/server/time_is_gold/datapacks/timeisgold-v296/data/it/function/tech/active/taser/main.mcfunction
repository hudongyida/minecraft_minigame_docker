function it:tech/utils/cooldown/tick {scoreboard:item.taser.cooldown}

# UI
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.taser.cooldown, value_target:"@s", base:item.taser.cooldown, base_target:"#MAX_VALUE", invert:1, item:taser}