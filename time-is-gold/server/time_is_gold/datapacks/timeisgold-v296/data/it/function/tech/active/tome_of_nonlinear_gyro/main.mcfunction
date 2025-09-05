function it:tech/utils/cooldown/tick {scoreboard:item.tome_of_nonlinear_gyro.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.tome_of_nonlinear_gyro.cooldown, value_target:"@s", base:item.tome_of_nonlinear_gyro.cooldown, base_target:"#MAX_VALUE", invert:1, item:tome_of_nonlinear_gyro}

execute as @e[type=marker,tag=item.tome_of_nonlinear_gyro.marker.singularity] run function it:tech/active/tome_of_nonlinear_gyro/step with entity @s data