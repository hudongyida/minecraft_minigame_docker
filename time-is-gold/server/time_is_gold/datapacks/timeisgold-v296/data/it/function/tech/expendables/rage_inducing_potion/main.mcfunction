execute as @a[predicate=system:player] if score @s item.rage_inducing_potion.time matches ..0 run scoreboard players set @s item.rage_inducing_potion.time_acceleration 0

execute as @a[predicate=system:player] if score @s item.rage_inducing_potion.time matches 1.. run scoreboard players remove @s item.rage_inducing_potion.time 1
execute as @a[predicate=system:player] if score @s item.rage_inducing_potion.time matches 1.. run scoreboard players set @s item.rage_inducing_potion.time_acceleration 1