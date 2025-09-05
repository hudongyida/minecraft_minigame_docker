function it:tech/utils/cooldown/tick {scoreboard:item.time_supply.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.time_supply.cooldown", value_target:"@s", base:"item.time_supply.cooldown", base_target:"#MAX_VALUE", invert:1, item:time_supply}

execute as @a[scores={item.time_supply.tick=1..}] run scoreboard players remove @s item.time_supply.tick 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{item:time_supply}] if predicate it:sneaking run function it:tech/active/time_supply/display_hud