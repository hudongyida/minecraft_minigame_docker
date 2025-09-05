function it:tech/utils/cooldown/tick {scoreboard:item.chicken_shooter.cooldown}
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.chicken_shooter.cooldown, value_target:"@s", base:item.chicken_shooter.cooldown, base_target:"#MAX_VALUE", invert:1, item:chicken_shooter}

execute as @e[type=chicken,tag=item.chicken_shooter.chicken] at @s run function it:tech/ranged/chicken_shooter/functions/bomb with entity @s data