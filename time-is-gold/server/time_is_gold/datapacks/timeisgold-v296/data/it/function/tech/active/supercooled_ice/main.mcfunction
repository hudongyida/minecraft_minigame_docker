function it:tech/utils/cooldown/tick {scoreboard:item.supercooled_ice.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.supercooled_ice.cooldown, value_target:"@s", base:item.supercooled_ice.cooldown, base_target:"#MAX_VALUE", invert:1, item:supercooled_ice}

execute as @e[type=tnt,tag=item.supercooled_ice.bomb] at @s unless block ~ ~ ~ #it:air run tp @s ~ ~.1 ~
execute as @e[type=tnt,tag=item.supercooled_ice.bomb,nbt={fuse:2s}] run function it:tech/active/supercooled_ice/explosion/init with entity @s data