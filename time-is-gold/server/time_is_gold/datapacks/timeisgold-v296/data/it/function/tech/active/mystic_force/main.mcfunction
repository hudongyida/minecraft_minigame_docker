function it:tech/utils/cooldown/tick {scoreboard:item.mystic_force.cooldown}

execute as @a if score @s item.mystic_force.tick matches 1.. run function it:tech/active/mystic_force/operation/init

execute as @a[predicate=system:player] run function it:tech/active/mystic_force/display_ui