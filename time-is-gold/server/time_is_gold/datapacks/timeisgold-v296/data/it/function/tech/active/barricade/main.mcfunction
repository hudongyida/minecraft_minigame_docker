function it:tech/utils/cooldown/tick {scoreboard:item.barricade.cooldown}
execute as @a run function it:tech/active/barricade/functions/display_ui

execute as @a if score @s item.barricade.tick matches 1.. run scoreboard players remove @s item.barricade.tick 1
execute as @a if score @s item.barricade.tick matches 0 run function it:tech/active/barricade/functions/reset_ability

execute as @e[type=creeper,tag=item.barricade.wall] run function it:tech/active/barricade/functions/remove