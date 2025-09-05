function it:tech/utils/cooldown/tick {scoreboard:item.bowstring.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.bowstring.cooldown", value_target:"@s", base:"item.bowstring.cooldown", base_target:"#MAX_VALUE", invert:1, item:bowstring}

# VFX
execute as @e[tag=monster] if score @s item.bowstring.particle matches 1 run function it:tech/active/bowstring/functions/particle