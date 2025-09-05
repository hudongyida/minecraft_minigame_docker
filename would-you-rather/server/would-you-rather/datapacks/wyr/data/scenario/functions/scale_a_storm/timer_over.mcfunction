execute as @a[tag=playing,team=sas,gamemode=adventure] at @s run function scenario:scale_a_storm/fail
tellraw @a[team=sas] [{"text":"时间到了!","color":"blue"}]