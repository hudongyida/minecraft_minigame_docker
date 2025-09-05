execute store result score #TEMP bosses.automaton.pattern2.randomizer1 run random value 1..100

execute positioned ~ ~ ~ if block ~ ~ ~ #it:air unless block ~ ~-0.1 ~ #it:air if score #TEMP bosses.automaton.pattern2.randomizer1 matches ..10 run function bosses:tech/automaton/pattern4/shockwave_display/type1
execute positioned ~ ~ ~ if block ~ ~ ~ #it:air unless block ~ ~-0.1 ~ #it:air if score #TEMP bosses.automaton.pattern2.randomizer1 matches 11..20 run function bosses:tech/automaton/pattern4/shockwave_display/type2
execute positioned ~ ~ ~ if block ~ ~ ~ #it:air unless block ~ ~-0.1 ~ #it:air if score #TEMP bosses.automaton.pattern2.randomizer1 matches 21..40 run function bosses:tech/automaton/pattern4/shockwave_display/type3
execute positioned ~ ~ ~ if block ~ ~ ~ #it:air unless block ~ ~-0.1 ~ #it:air if score #TEMP bosses.automaton.pattern2.randomizer1 matches 41.. run function bosses:tech/automaton/pattern4/shockwave_display/type4