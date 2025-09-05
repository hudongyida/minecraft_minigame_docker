scoreboard players reset @s item.bard_guitar.success
scoreboard players reset @s item.bard_guitar.playing
scoreboard players reset @s item.bard_guitar.note
execute as @s unless entity @s[tag=item.bard_guitar.failed] run function it:tech/utils/cooldown/init {scoreboard:item.bard_guitar.cooldown,value:100}
#execute as @s if entity @s[tag=item.bard_guitar.failed] run function it:tech/utils/cooldown/init {scoreboard:item.bard_guitar.cooldown,value:400}
#tag @s remove item.bard_guitar.failed