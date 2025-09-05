function it:tech/utils/cooldown/tick {scoreboard:item.dike_justice.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/dike_justice/display_ui
execute as @a[scores={item.dike_justice.active=1..}] run scoreboard players remove @s item.dike_justice.active 1
execute as @a[scores={item.dike_justice.active=0}] run function it:tech/active/dike_justice/reset_ability

# VFX
execute as @a[scores={item.dike_justice.active=1..}] at @s run particle dust_color_transition{from_color:[0.914, 1.000, 0.141], scale:1, to_color:[0.988, 1.000, 0.631]} ~ ~1 ~ .4 .5 .4 0 8 force
execute as @a[scores={item.dike_justice.active=1..}] at @s run particle glow ~ ~1 ~ .7 .8 .7 0 8 force