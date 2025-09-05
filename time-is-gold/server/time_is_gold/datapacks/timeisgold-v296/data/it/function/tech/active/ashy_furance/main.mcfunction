function it:tech/utils/cooldown/tick {scoreboard:item.ashy_furance.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.ashy_furance.cooldown", value_target:"@s", base:"item.ashy_furance.cooldown", base_target:"#MAX_VALUE", invert:1, item:ashy_furance}

execute as @a if score @s item.ashy_furance.cube_counter matches 1.. run scoreboard players reset @s item.ashy_furance.cube_counter
execute as @e[type=magma_cube,tag=item.ashy_furance.cube] at @s run function it:tech/active/ashy_furance/functions/owner_check
execute as @a if items entity @s weapon.mainhand *[custom_data~{item:ashy_furance}] if predicate it:sneaking run function it:tech/active/ashy_furance/functions/display_hud