execute as @s unless score @s item.flamethrower.fragility matches 1.. run scoreboard players set @s item.flamethrower.fragility 600
function it:tech/utils/effect/ignite/apply {firetick:200}
$function system:combat/modified_damage/ranged/init {playerid:$(playerid),knockback:1,value:2d}
tag @s remove item.flamethrower.hit
scoreboard players add @s item.flamethrower.delay 10
$execute as @a[scores={playerid=$(playerid)}] run function it:tech/utils/use_cost/time {cost:5}