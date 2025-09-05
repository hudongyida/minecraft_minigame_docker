execute positioned ~ ~ ~ run function bosses:tech/utils/random_pos/init {dx:10, dz:10, tag:"bosses.automaton.pattern5.marker.obstacle_pos_temp"}
scoreboard players add @s bosses.automaton.pattern5.random_pos_count 1

execute if score @s bosses.automaton.pattern5.random_pos_count <= #SYSTEM bosses.automaton.pattern5.random_pos_count positioned ~ ~ ~ run function bosses:tech/automaton/pattern5/operation/pick_pos