execute as @a[team=gf,gamemode=adventure,tag=playing] at @s run function scenario:go_fishing/fail
tellraw @a[tag=playing,team=gf] [{"text":"时间到了. 鱼游走了.","color":"blue"}]