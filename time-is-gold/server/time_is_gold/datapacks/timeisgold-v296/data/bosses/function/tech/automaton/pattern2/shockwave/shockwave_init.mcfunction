execute positioned ^ ^ ^ rotated ~ ~ run summon marker ^ ^ ^ {Tags:[bosses.automaton.shockwave.marker,bosses.automaton.shockwave.marker.uninitialized],data:{bossuuid:""}}

function system:utils/uuid_tokenizer/init
execute at @s run data modify entity @n[type=marker,tag=bosses.automaton.shockwave.marker.uninitialized,distance=..0.5] data.bossuuid set from storage timeisgold:uuid_tokenizer output
execute at @s rotated as @s run rotate @n[type=marker,tag=bosses.automaton.shockwave.marker.uninitialized,distance=..0.5] ~ 0
execute at @s run scoreboard players operation @n[type=marker,tag=bosses.automaton.shockwave.marker.uninitialized,distance=..0.5] bosses.automaton.pattern2.shockwave_life_tick = #SYSTEM bosses.automaton.pattern2.shockwave_life_tick
execute at @s run tag @n[type=marker,tag=bosses.automaton.shockwave.marker.uninitialized,distance=..0.5] remove bosses.automaton.shockwave.marker.uninitialized