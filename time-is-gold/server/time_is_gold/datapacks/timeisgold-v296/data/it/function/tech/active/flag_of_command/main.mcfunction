function it:tech/utils/cooldown/tick {scoreboard:item.flag_of_command.cooldown}
execute as @a if score @s item.flag_of_command.invincibility matches 1.. run scoreboard players reset @s item.flag_of_command.invincibility

# VFX
execute as @e[tag=item.flag_of_command.display,type=item_display] at @s run function it:tech/active/flag_of_command/functions/tick
execute as @a[predicate=system:player] run function system:ui/bar/set {value:item.flag_of_command.cooldown, value_target:"@s", base:item.flag_of_command.cooldown, base_target:"#MAX_VALUE", invert:1, item:flag_of_command}

# Grants
execute as @a if score @s item.flag_of_command.grant matches 1 run effect give @s slowness 1 200 true
execute as @a if score @s item.flag_of_command.grant matches 1 run scoreboard players reset @s item.flag_of_command.grant
