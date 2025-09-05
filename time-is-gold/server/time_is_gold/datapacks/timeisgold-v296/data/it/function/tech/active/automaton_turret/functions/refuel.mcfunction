particle smoke ~ ~1 ~ .5 .5 .5 0 20 force
$execute at @a[scores={playerid=$(playerid)}] run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 0
scoreboard players add @s item.automaton_turret.fuel 10

$execute as @a[scores={playerid=$(playerid)}] if items entity @s weapon.mainhand *[custom_data~{item:gunpowder}] run return run function it:tech/utils/use_cost/item_mainhand
$execute as @a[scores={playerid=$(playerid)}] run function it:tech/utils/use_cost/item_offhand