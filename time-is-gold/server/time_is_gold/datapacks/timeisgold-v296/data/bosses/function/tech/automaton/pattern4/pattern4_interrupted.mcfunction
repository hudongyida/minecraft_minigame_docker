data modify entity @s NoAI set value false
data modify entity @s NoGravity set value false
effect clear @s absorption
scoreboard players operation @s bosses.automaton.pattern4.cooldown = #SYSTEM bosses.automaton.pattern4.cooldown
scoreboard players operation @s bosses.automaton.global.cooldown = #SYSTEM bosses.automaton.global.cooldown
scoreboard players reset @s bosses.automaton.pattern4.countdown_tick
scoreboard players set @a bosses.automaton.pattern1.attack_count 0

execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] run data modify entity @s data.targetuuid set from entity @p[predicate=system:player] UUID

execute as @s at @s positioned ~ ~ ~ run function system:vfx/clock_rotate/kill_clock
execute as @s run function bosses:tech/utils/bossbar/manager {function:"bosses:tech/utils/bossbar/remove", id:1}

tag @s remove boss.automaton.pattern4.active
tag @s remove boss.automaton.pattern4.interrupted