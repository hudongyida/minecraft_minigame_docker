function it:tech/utils/cooldown/tick {scoreboard:item.hyperretractor.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/hyperretractor/display_ui

execute as @a if score @s item.hyperretractor.tick matches 1.. run scoreboard players remove @s item.hyperretractor.tick 1
execute as @a if score @s item.hyperretractor.tick matches 0 run function it:tech/active/hyperretractor/reset_ability

execute as @e[type=marker,tag=item.hyperretractor.marker.placed] at @s run function it:tech/active/hyperretractor/operation/step