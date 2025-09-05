scoreboard players operation @s bosses.utils.cutscene.tick = #SYSTEM bosses.utils.cutscene.tick

data modify entity @s NoAI set value true
data modify entity @s Invulnerable set value true
data modify entity @s Silent set value true

execute rotated as @s run rotate @s ~ 45

tag @s remove boss.automaton.play_cutscene