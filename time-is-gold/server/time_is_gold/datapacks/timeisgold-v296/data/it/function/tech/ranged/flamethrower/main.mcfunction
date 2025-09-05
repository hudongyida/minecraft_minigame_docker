#function it:tech/utils/cooldown/tick {scoreboard:item.flamethrower.cooldown}
execute as @e[tag=monster] if score @s item.flamethrower.delay matches 1.. run scoreboard players remove @s item.flamethrower.delay 1
execute as @e[tag=monster] if score @s item.flamethrower.fragility matches 1.. run scoreboard players remove @s item.flamethrower.fragility 1