# SFX
$execute at @s if predicate it:10pc positioned ^ ^ ^$(radius) rotated ~ ~ run playsound block.tuff.break block @a ~ ~ ~ 1 0.5 0
$execute at @s positioned ^ ^ ^$(radius) rotated ~ ~ run function bosses:tech/automaton/pattern4/shockwave_circular/shockwave_circular_display with entity @s data
$execute at @s run rotate @s ~$(angle) 0

scoreboard players add @s bosses.automaton.pattern4.shockwave_rotation_count 1
execute as @s if score @s bosses.automaton.pattern4.shockwave_rotation_count <= @s bosses.automaton.pattern4.shockwave_rotation run function bosses:tech/automaton/pattern4/shockwave_circular/shockwave_circular_rotation with entity @s data