function it:tech/utils/cooldown/tick {scoreboard:item.pocket_refrigerator.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/pocket_refrigerator/display_ui

execute as @a if score @s item.pocket_refrigerator.tick matches 1.. run scoreboard players remove @s item.pocket_refrigerator.tick 1
execute as @a if score @s item.pocket_refrigerator.tick matches 0 run function it:tech/active/pocket_refrigerator/reset_ability

# VFX
execute as @a[scores={item.pocket_refrigerator.tick=1..}] at @s run particle minecraft:snowflake ~ ~1 ~ 0.25 0.5 0.25 0 2 force