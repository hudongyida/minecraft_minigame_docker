# FUEL
execute as @s if score @s item.automaton_turret.runtime matches 1.. run scoreboard players remove @s item.automaton_turret.runtime 1
execute as @s if score @s item.automaton_turret.fuel matches 1.. run function it:tech/active/automaton_turret/functions/operate/refuel_operate
$execute at @s as @n[tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.text,distance=..3] run function it:tech/active/automaton_turret/functions/operate/config_text {playerid:$(playerid)}

# Target
execute as @s run function it:tech/active/automaton_turret/functions/operate/targeting
execute as @s unless score @s item.automaton_turret.fuel matches 1.. \
    unless score @s item.automaton_turret.runtime matches 1.. run \
    function it:tech/active/automaton_turret/animation/deactivate with entity @s data