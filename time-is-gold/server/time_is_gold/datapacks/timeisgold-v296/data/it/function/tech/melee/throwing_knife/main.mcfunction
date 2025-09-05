function it:tech/utils/cooldown/tick {scoreboard:item.throwing_knife.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.throwing_knife.cooldown, value_target:"@s", base:item.throwing_knife.cooldown, base_target:"#MAX_VALUE", invert:1, item:throwing_knife}

execute as @a if score @s item.throwing_knife.ability_delay matches 1.. run scoreboard players remove @s item.throwing_knife.ability_delay 1
execute as @a if score @s item.throwing_knife.ability_tick matches 1.. run function it:tech/melee/throwing_knife/operation/step