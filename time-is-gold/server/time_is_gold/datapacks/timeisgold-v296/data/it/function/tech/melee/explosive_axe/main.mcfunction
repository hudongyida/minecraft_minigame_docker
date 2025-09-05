function it:tech/utils/cooldown/tick {scoreboard:item.explosive_axe.cooldown}
execute as @a[predicate=system:player] run function system:ui/bar/set {value:item.explosive_axe.cooldown, value_target:"@s", base:item.explosive_axe.cooldown, base_target:"#MAX_VALUE", invert:1, item:explosive_axe}

# SFX
execute as @a[scores={item.explosive_axe.charge=1..}] if predicate system:periodic_tick_10 if items entity @s weapon.mainhand *[custom_data~{item:explosive_axe}] at @s run function it:tech/melee/explosive_axe/sfx

# VFX
execute as @a[scores={item.explosive_axe.charge=1..}] if items entity @s weapon.mainhand *[custom_data~{item:explosive_axe}] at @s run particle dust_color_transition{from_color:[1.000, 0.949, 0.220], scale:1, to_color:[0.859, 0.043, 0.043]} ~ ~1 ~ 0.25 0.5 0.25 0.1 2 force