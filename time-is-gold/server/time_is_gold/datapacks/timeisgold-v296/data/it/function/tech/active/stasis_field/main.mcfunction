function it:tech/utils/cooldown/tick {scoreboard:item.stasis_field.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.stasis_field.cooldown, value_target:"@s", base:item.stasis_field.cooldown, base_target:"#MAX_VALUE", invert:1, item:stasis_field}

#execute as @a if score @s item.stasis_field.charge matches 1.. unless items entity @s container.* *[custom_data~{item:"stasis_field"}] run scoreboard players reset @s item.stasis_field.charge

execute as @e[type=marker,tag=item.stasis_field.marker] at @s run function it:tech/active/stasis_field/functions/tick with entity @s data
execute as @a if items entity @s weapon.mainhand *[custom_data~{item:stasis_field}] if predicate it:sneaking run function it:tech/active/stasis_field/functions/display_hud