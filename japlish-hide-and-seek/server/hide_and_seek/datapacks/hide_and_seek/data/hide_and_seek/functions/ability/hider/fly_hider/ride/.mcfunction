#実行者は雪玉
tag @s add not_yet

execute on origin run ride @s mount @e[type=snowball,tag=fly_hider_module,tag=not_yet,sort=nearest,limit=1]

tag @s remove not_yet