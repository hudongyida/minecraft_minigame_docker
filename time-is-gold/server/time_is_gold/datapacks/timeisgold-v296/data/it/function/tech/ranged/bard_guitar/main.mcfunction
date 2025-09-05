function it:tech/utils/cooldown/tick {scoreboard:item.bard_guitar.cooldown}

execute as @a if score @s item.bard_guitar.playing matches 1.. run function it:tech/ranged/bard_guitar/functions/note

# UI
execute as @a unless score @s item.bard_guitar.playing matches 1.. run function system:ui/bar/set {value:"item.bard_guitar.cooldown", value_target:"@s", base:"item.bard_guitar.cooldown", base_target:"#MAX_VALUE", invert:1, item:bard_guitar}
execute as @a if score @s item.bard_guitar.playing matches 1.. run function system:ui/bar/set {value:"item.bard_guitar.playing", value_target:"@s", base:"scoreboardConstant", base_target:"#40", invert:0, item:bard_guitar}