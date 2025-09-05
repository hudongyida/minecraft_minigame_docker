function it:tech/utils/cooldown/tick {scoreboard:item.rapier.cooldown}

execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.rapier.cooldown, value_target:"@s", base:item.rapier.cooldown, base_target:"#MAX_VALUE", invert:1, item:rapier}