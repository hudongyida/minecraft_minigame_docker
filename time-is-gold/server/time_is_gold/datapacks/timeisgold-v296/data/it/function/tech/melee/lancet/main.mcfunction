function it:tech/utils/cooldown/tick {scoreboard:item.lancet.cooldown}
execute as @a[predicate=system:player] run function system:ui/bar/set {value:item.lancet.cooldown, value_target:"@s", base:item.lancet.cooldown, base_target:"#MAX_VALUE", invert:1, item:lancet}
execute as @a if items entity @s weapon.mainhand *[custom_data~{item:lancet}] run function it:tech/melee/lancet/display_state