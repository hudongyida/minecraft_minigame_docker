function it:tech/utils/cooldown/tick {scoreboard:item.spring.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.spring.cooldown, value_target:"@s", base:item.spring.cooldown, base_target:"#MAX_VALUE", invert:1, item:spring}

execute as @e[type=armor_stand,tag=item.spring.armor_stand.display] at @s run function it:tech/active/spring/ground_check