function it:tech/utils/cooldown/tick {scoreboard:item.muleta.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.muleta.cooldown, value_target:"@s", base:item.muleta.cooldown, base_target:"#MAX_VALUE", invert:1, item:muleta}
