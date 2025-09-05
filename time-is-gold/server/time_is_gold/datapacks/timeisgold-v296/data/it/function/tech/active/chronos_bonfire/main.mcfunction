function it:tech/utils/cooldown/tick {scoreboard:item.chronos_bonfire.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.chronos_bonfire.cooldown", value_target:"@s", base:"item.chronos_bonfire.cooldown", base_target:"#MAX_VALUE", invert:1, item:chronos_bonfire}

execute as @e[type=interaction,tag=item.chronos_bonfire.interaction.placed] at @s if function system:utils/interaction/interaction_check run function it:tech/active/chronos_bonfire/macro/retrieve with entity @n[type=marker,tag=item.chronos_bonfire.marker.placed] data

execute as @a[predicate=system:player] if score @s item.chronos_bonfire.active matches 1 run scoreboard players reset @s item.chronos_bonfire.active
execute as @e[type=marker,tag=item.chronos_bonfire.marker.placed] run function it:tech/active/chronos_bonfire/functions/tick