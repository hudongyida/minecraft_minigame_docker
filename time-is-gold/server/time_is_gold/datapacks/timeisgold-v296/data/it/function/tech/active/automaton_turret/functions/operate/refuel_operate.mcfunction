execute as @s if score @s item.automaton_turret.runtime matches 1.. run return fail
execute as @s run scoreboard players remove @s item.automaton_turret.fuel 1
execute as @s run scoreboard players add @s item.automaton_turret.runtime 20