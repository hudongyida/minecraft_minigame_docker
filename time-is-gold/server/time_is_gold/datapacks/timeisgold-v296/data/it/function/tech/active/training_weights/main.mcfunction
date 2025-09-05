function it:tech/utils/cooldown/tick {scoreboard:item.training_weights.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/training_weights/display_ui

execute as @a[scores={item.training_weights.active=1..}] run scoreboard players remove @s item.training_weights.active 1
execute as @a[scores={item.training_weights.active=0}] run function it:tech/active/training_weights/reset_ability