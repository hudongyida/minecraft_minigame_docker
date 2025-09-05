$execute as @n[type=block_display,tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.head,distance=..3] if entity @s[x_rotation=-10..90] at @s run tp @s ~ ~ ~ ~ ~-3
$execute as @n[type=block_display,tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.head,distance=..3] at @s run tp @s ~ ~ ~ ~2 ~

# sound
execute as @s at @s run particle minecraft:dust_plume ~ ~-.2 ~ 0.5 0.5 0.5 0 1 force