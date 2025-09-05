function it:tech/utils/cooldown/tick {scoreboard:item.emp_generator.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.emp_generator.cooldown, value_target:"@s", base:item.emp_generator.cooldown, base_target:"#MAX_VALUE", invert:1, item:emp_generator}

# VFX
execute as @e[tag=monster] if score @s item.emp_generator.particle matches 1 at @s run function it:tech/active/emp_generator/functions/particle