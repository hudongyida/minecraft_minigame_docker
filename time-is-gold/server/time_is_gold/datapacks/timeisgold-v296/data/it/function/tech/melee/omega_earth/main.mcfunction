function it:tech/utils/cooldown/tick {scoreboard:item.omega_earth.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.omega_earth.cooldown, value_target:"@s", base:item.omega_earth.cooldown, base_target:"#MAX_VALUE", invert:1, item:omega_earth}
function it:tech/melee/omega_earth/tick