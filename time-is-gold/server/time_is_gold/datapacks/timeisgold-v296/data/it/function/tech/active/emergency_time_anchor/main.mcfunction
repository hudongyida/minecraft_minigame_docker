function it:tech/utils/cooldown/tick {scoreboard:item.emergency_time_anchor.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/emergency_time_anchor/display_ui

execute as @a if score @s item.emergency_time_anchor.tick matches 1.. run scoreboard players remove @s item.emergency_time_anchor.tick 1
execute as @a if score @s item.emergency_time_anchor.tick matches 0 run function it:tech/active/emergency_time_anchor/reset_ability

execute as @e[type=armor_stand,tag=item.emergency_time_anchor.armor_stand.anchor] at @s run function it:tech/active/emergency_time_anchor/step