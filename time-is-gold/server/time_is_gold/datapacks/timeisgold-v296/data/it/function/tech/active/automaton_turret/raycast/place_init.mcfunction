# check available place to place
execute positioned ~ ~ ~ align xyz if entity @n[distance=..3,tag=item.automaton_turret.display] run tag @s add item.automaton_turret.not_available_place
execute positioned ~ ~ ~ align xyz if entity @n[distance=..1,tag=item.automaton_turret.marker] run tag @s add item.automaton_turret.not_available_place
execute positioned ~ ~ ~ align xyz unless block ~ ~ ~ #it:air run tag @s add item.automaton_turret.not_available_place
execute positioned ~ ~ ~ align xyz unless block ~ ~1 ~ #it:air run tag @s add item.automaton_turret.not_available_place
execute positioned ~ ~ ~ align xyz if block ~ ~-1 ~ #it:air run tag @s add item.automaton_turret.not_available_place

$execute as @s if entity @s[tag=item.automaton_turret.not_available_place] run return run function it:tech/active/automaton_turret/functions/fail/place_fail {playerid:$(playerid)}

# Place
$execute align xyz positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["item.automaton_turret.marker","item.automaton_turret.id-$(playerid)"],data:{runtime:0,fuel:0,playerid:$(playerid)}}
$execute align xyz positioned ~ ~ ~ as @n[type=marker,tag=item.automaton_turret.id-$(playerid),distance=..1] store result entity @s data.fuel int 1 run data get entity @n[scores={playerid=$(playerid)}] SelectedItem.components.minecraft:custom_data.fuel
$execute align xyz positioned ~ ~ ~ as @n[type=marker,tag=item.automaton_turret.id-$(playerid),distance=..1] store result entity @s data.runtime int 1 run data get entity @n[scores={playerid=$(playerid)}] SelectedItem.components.minecraft:custom_data.runtime
$item replace entity @a[scores={playerid=$(playerid)}] weapon.mainhand with air

$execute align xyz positioned ~ ~ ~ as @n[type=marker,tag=item.automaton_turret.id-$(playerid),distance=..1] run function it:tech/active/automaton_turret/functions/place_setup with entity @s data
execute align xyz positioned ~ ~ ~ run playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 1 1 0