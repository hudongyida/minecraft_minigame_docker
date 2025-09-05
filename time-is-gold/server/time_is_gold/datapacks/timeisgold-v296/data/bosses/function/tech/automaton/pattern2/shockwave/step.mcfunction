# 실행 인자: @e[type=marker,tag=bosses.automaton.shockwave.marker]

execute at @s run tp @s ^ ^ ^0.66
execute at @s positioned ^1.0 ^-1.0 ^ if block ~ ~1 ~ #it:air unless block ~ ~ ~ #it:air run function bosses:tech/automaton/pattern2/shockwave/shockwave_display
execute at @s positioned ^0.0 ^-1.0 ^ if block ~ ~1 ~ #it:air unless block ~ ~ ~ #it:air run function bosses:tech/automaton/pattern2/shockwave/shockwave_display
execute at @s positioned ^-1.0 ^-1.0 ^ if block ~ ~1 ~ #it:air unless block ~ ~ ~ #it:air run function bosses:tech/automaton/pattern2/shockwave/shockwave_display
execute at @s run playsound block.tuff.break block @a ~ ~ ~ 1 0.5 0

execute at @s run function bosses:tech/automaton/pattern2/shockwave/shockwave_damage with entity @s data

execute if score @s bosses.automaton.pattern2.shockwave_life_tick matches 1.. run scoreboard players remove @s bosses.automaton.pattern2.shockwave_life_tick 1
execute at @s unless block ~ ~ ~ #it:air run scoreboard players reset @s bosses.automaton.pattern2.shockwave_life_tick
execute at @s unless block ~ ~ ~ #it:air run function bosses:tech/automaton/pattern2/shockwave/wall_check with entity @s data
execute unless score @s bosses.automaton.pattern2.shockwave_life_tick matches 1.. run kill @s