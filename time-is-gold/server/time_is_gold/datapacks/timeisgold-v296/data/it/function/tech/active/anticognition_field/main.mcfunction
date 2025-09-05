function it:tech/utils/cooldown/tick {scoreboard:item.anticognition_field.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/anticognition_field/display_ui

execute as @a if score @s item.anticognition_field.tick matches 1.. run scoreboard players remove @s item.anticognition_field.tick 1
execute as @a if score @s item.anticognition_field.tick matches 1.. run function it:tech/active/anticognition_field/ability
execute as @a if score @s item.anticognition_field.tick matches 0 run function it:tech/active/anticognition_field/reset_ability