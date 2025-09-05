# Cube

particle white_ash ~ ~ ~ 0.45 0.45 0.45 0 1 force
particle ash ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute as @s if predicate system:periodic_tick_20 run playsound block.furnace.fire_crackle hostile @a ~ ~ ~ 1 1 0

$scoreboard players add @a[scores={playerid=$(playerid)}] item.ashy_furance.cube_counter 1
execute as @s if score @s item.ashy_furance.cube_age matches 5.. run function it:tech/active/ashy_furance/functions/destroy

$execute at @s if entity @n[tag=monster,distance=..25] run function it:tech/active/ashy_furance/functions/blast_init {playerid:$(playerid)}

execute unless entity @s[team=players] run team join players @s