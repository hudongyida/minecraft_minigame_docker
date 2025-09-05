function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

execute store result score @s bosses.automaton.pattern5.spawn_delay run random value 0..100000
scoreboard players operation @s bosses.automaton.pattern5.spawn_delay %= #SYSTEM bosses.automaton.pattern5.spawn_delay
scoreboard players operation @s bosses.automaton.pattern5.tick = #SYSTEM bosses.automaton.pattern5.tick

tag @s remove bosses.automaton.pattern5.marker.obstacle.uninitialized