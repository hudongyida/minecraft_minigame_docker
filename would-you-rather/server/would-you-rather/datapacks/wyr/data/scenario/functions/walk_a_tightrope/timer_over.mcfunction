execute as @a[team=wat,tag=playing,gamemode=adventure] at @s run function scenario:walk_a_tightrope/fail
tellraw @a[team=wat] {"text":"时间用尽!","color":"gold"}