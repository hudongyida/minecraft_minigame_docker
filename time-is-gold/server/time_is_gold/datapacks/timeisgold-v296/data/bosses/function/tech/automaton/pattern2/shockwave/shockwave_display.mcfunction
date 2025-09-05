execute store result score #TEMP bosses.automaton.pattern2.randomizer1 run random value 1..100
#execute store result score #TEMP bosses.automaton.pattern2.randomizer2 run random value 15..55

data modify storage timeisgold:function_api stack append value {blockname:"stone", motion:0}
execute if score #TEMP bosses.automaton.pattern2.randomizer1 matches ..10 run data modify storage timeisgold:function_api stack[-1].blockname set value "andesite"
execute if score #TEMP bosses.automaton.pattern2.randomizer1 matches 11..20 run data modify storage timeisgold:function_api stack[-1].blockname set value "gravel"
execute if score #TEMP bosses.automaton.pattern2.randomizer1 matches 21..40 run data modify storage timeisgold:function_api stack[-1].blockname set value "tuff"
#execute if score #TEMP bosses.automaton.pattern2.randomizer1 matches 41.. run data modify storage timeisgold:function_api stack[-1].blockname set value "stone"
execute store result storage timeisgold:function_api stack[-1].motion int 1.0 run random value 15..55
execute positioned ~ ~ ~ run function bosses:tech/automaton/pattern2/shockwave/shockwave_summon_block with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]