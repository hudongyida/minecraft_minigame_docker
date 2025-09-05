execute as @s run function it:tech/utils/cooldown/init {scoreboard:item.training_weights.cooldown, value:1200}
scoreboard players reset @s item.training_weights.active
effect give @s minecraft:mining_fatigue 10 0 false