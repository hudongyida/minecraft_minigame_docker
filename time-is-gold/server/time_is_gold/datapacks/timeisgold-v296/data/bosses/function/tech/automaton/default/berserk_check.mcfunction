# 오토마톤 광폭화 상태 관리
execute store result score @s bosses.automaton.pattern4.max_hp run attribute @s max_health get 1
execute store result score @s bosses.automaton.pattern4.current_hp run data get entity @s Health 1
scoreboard players operation @s bosses.automaton.pattern4.hp_ratio = @s bosses.automaton.pattern4.max_hp
scoreboard players operation @s bosses.automaton.pattern4.hp_ratio /= @s bosses.automaton.pattern4.current_hp

execute if score @s bosses.automaton.pattern4.hp_ratio matches 2.. run tag @s add boss.berserk