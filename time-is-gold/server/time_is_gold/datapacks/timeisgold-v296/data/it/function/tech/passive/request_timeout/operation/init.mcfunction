execute as @s if predicate it:10pc run tag @s add item.request_timeout.release_damage

execute as @s[tag=item.request_timeout.release_damage] run function it:tech/passive/request_timeout/release_damage

execute as @s[tag=!item.request_timeout.release_damage] run scoreboard players operation @s item.request_timeout.damage_stored *= #95 scoreboardConstant
execute as @s[tag=!item.request_timeout.release_damage] run scoreboard players operation @s item.request_timeout.damage_stored /= #100 scoreboardConstant
execute as @s[tag=!item.request_timeout.release_damage] run scoreboard players set @s item.request_timeout.tick 20