execute store result score @s bosses.automaton.pattern5.pos.x run data get entity @s Pos[0] 100
execute store result score @s bosses.automaton.pattern5.pos.z run data get entity @s Pos[2] 100
scoreboard players operation @s bosses.automaton.pattern5.pos.origin.x -= @s bosses.automaton.pattern5.pos.x
scoreboard players operation @s bosses.automaton.pattern5.pos.origin.z -= @s bosses.automaton.pattern5.pos.z

scoreboard players operation @s bosses.automaton.pattern5.pos.origin.x *= @s bosses.automaton.pattern5.pos.origin.x
scoreboard players operation @s bosses.automaton.pattern5.pos.origin.z *= @s bosses.automaton.pattern5.pos.origin.z

scoreboard players operation @s bosses.automaton.pattern5.distance = @s bosses.automaton.pattern5.pos.origin.x
scoreboard players operation @s bosses.automaton.pattern5.distance += @s bosses.automaton.pattern5.pos.origin.z

execute if score @s bosses.automaton.pattern5.distance matches 160000.. run tag @s remove bosses.automaton.pattern5.damage_target