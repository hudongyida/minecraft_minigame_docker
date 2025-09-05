function it:tech/utils/cooldown/tick {scoreboard:item.placeholder.cooldown}
execute as @a run function it:tech/passive/placeholder/active_check

execute as @a[scores={item.placeholder.active=1}] unless entity @s[tag=item.placeholder.active] run scoreboard players reset @s item.placeholder.active
execute as @a[tag=item.placeholder.active] run scoreboard players set @s item.placeholder.active 1
execute as @a[tag=item.placeholder.active] unless score @s item.placeholder.slot matches 0.. run scoreboard players set @s item.placeholder.slot 8

tag @a[tag=item.placeholder.active] remove item.placeholder.active

execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:"item.placeholder.cooldown", value_target:"@s", base:"item.placeholder.cooldown", base_target:"#MAX_VALUE", invert:1, item:placeholder}