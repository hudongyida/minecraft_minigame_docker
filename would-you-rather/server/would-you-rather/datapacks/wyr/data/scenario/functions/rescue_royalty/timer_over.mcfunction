execute as @a[tag=playing,gamemode=adventure,team=rap] at @s run function scenario:rescue_royalty/fail
tellraw @a[team=rap] [{"text":"时间到了!","color":"dark_red"}]