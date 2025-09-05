$execute as @n[type=marker,tag=item.automaton_turret.id-$(playerid),distance=..1] store result entity @s data.fuel int 1 run scoreboard players get @s item.automaton_turret.fuel
$execute as @n[type=marker,tag=item.automaton_turret.id-$(playerid),distance=..1] store result entity @s data.runtime int 1 run scoreboard players get @s item.automaton_turret.runtime

$execute as @a[scores={playerid=$(playerid)}] run function it:item_manager/active/api/automaton_turret_api with entity @n[type=marker,tag=item.automaton_turret.id-$(playerid),distance=..1] data
$execute as @a[scores={playerid=$(playerid)}] at @s run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1 0.7 0

$execute at @s run kill @n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.plate,distance=..3]
$execute at @s run kill @n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.axis,distance=..3]
$execute at @s run kill @n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.head,distance=..3]
$execute at @s run kill @n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.text,distance=..3]
$execute at @s run kill @n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.marker,distance=..3]
execute at @s run kill @s