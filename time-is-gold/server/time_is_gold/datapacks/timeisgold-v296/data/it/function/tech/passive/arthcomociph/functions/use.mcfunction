execute as @s at @s if predicate system:on_ground run scoreboard players set @s item.arthcomociph.time 160
scoreboard players set @s item.arthcomociph.active 1
effect clear @s levitation

function system:ui/bar/set {value:"item.arthcomociph.time", value_target:"@s", base:"scoreboardConstant", base_target:"#160", invert:0, item:arthcomociph}

execute unless score @s item.arthcomociph.time matches 1.. run return fail

execute as @s if predicate it:jump run tag @s add item.arthcomociph.activate
execute as @s[tag=item.arthcomociph.activate] run effect give @s minecraft:levitation 1 7 true
execute as @s[tag=item.arthcomociph.activate] run scoreboard players remove @s item.arthcomociph.time 1
execute as @s[tag=item.arthcomociph.activate] at @s if predicate system:periodic_tick_2 run function it:tech/passive/arthcomociph/functions/particle
execute as @s[tag=item.arthcomociph.activate] at @s if predicate system:periodic_tick_20 run playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ 0.8 0.5 0
execute as @s[tag=item.arthcomociph.activate] at @s if predicate system:periodic_tick_30 run playsound minecraft:entity.breeze.land hostile @a ~ ~ ~ 1 0.5 0
execute as @s[tag=item.arthcomociph.activate] at @s if score @s item.arthcomociph.time matches 145 run playsound minecraft:block.trial_spawner.about_to_spawn_item block @a ~ ~ ~ 1 1.5 0
execute as @s[tag=item.arthcomociph.activate] at @s if score @s item.arthcomociph.time matches 40 run playsound minecraft:block.amethyst_cluster.break block @a ~ ~ ~ 0.5 1 0
tag @s remove item.arthcomociph.activate