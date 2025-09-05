execute as @a[tag=playing,team=cms,gamemode=adventure] at @s run function scenario:cook_mushroom_soups/fail
tellraw @a[tag=playing,team=cms] [{"text":"时间到了. 顾客似乎不太高兴.","color":"red"}]