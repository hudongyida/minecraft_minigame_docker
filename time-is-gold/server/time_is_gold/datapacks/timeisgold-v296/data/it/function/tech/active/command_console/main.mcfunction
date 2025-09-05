function it:tech/utils/cooldown/tick {scoreboard:item.command_console.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.command_console.cooldown", value_target:"@s", base:"item.command_console.cooldown", base_target:"#MAX_VALUE", invert:1, item:command_console}

execute as @a if score @s item.command_console.typing_sound matches 1.. at @s run function it:tech/active/command_console/functions/typing