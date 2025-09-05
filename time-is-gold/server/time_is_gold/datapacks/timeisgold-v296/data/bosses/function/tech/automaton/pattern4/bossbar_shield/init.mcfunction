$bossbar add $(bossbarid) {"text":""}
$bossbar set $(bossbarid) color white
$bossbar set $(bossbarid) players @a
$bossbar set $(bossbarid) style progress
$execute as @s at @s store result bossbar $(bossbarid) max run scoreboard players get @s bosses.automaton.pattern4.shield_hp