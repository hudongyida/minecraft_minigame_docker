function it:tech/utils/cooldown/tick {scoreboard:item.contrary_wind.cooldown}

execute as @a if score @s item.contrary_wind.sneak_time matches 6.. unless predicate it:sneaking run scoreboard players reset @s item.contrary_wind.sneak_time

execute as @a run function it:tech/utils/detect/slot {item_tag:contrary_wind, tag:item.contrary_wind.active, slot:6}
execute as @a[tag=item.contrary_wind.active] run function it:tech/passive/contrary_wind/functions/key_tapping
execute as @a[tag=item.contrary_wind.use] at @s run function it:tech/passive/contrary_wind/functions/use
tag @a[tag=item.contrary_wind.active] remove item.contrary_wind.active

# UI
execute as @a run function it:tech/utils/cooldown/ui_display {value:"item.contrary_wind.cooldown", value_target:"@s", base:"item.contrary_wind.cooldown", base_target:"#MAX_VALUE", invert:1, item:contrary_wind}

execute as @e[type=marker ,tag=item.contrary_wind.leaves] at @s run function it:tech/passive/contrary_wind/functions/damage with entity @s data