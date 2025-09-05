execute as @a[predicate=system:player] if score @s item.body_time_potion.time matches 1.. run function it:tech/utils/effect/time_acceleration/init {scoreboard:item.body_time_potion.time}

execute as @a[predicate=system:player] if score @s item.body_time_potion.time matches 1.. at @s run particle entity_effect{color:[0.278,0.831,0.278,1.00]} ~ ~1 ~ 0.1 0.1 0.1 0.05 0 force