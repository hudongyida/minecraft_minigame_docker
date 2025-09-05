function it:tech/utils/cooldown/tick {scoreboard:item.tnt.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.tnt.cooldown, value_target:"@s", base:item.tnt.cooldown, base_target:"#MAX_VALUE", invert:1, item:tnt}

execute as @e[type=tnt,tag=item.tnt.bomb] at @s unless block ~ ~ ~ #it:air run tp @s ~ ~.1 ~
execute as @e[type=tnt,tag=item.tnt.bomb,nbt={fuse:2s}] run function it:tech/active/tnt/explosion/init