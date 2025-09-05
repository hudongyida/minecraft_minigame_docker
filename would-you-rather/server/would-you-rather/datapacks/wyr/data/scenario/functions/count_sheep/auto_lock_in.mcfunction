tellraw @a[tag=playing,team=cs,gamemode=adventure,tag=!cs_locked_in] [{"text":"-=- ","color":"gray","bold":true},{"text":"时间不多了! 你的答案已被锁定."}]
execute as @a[tag=playing,team=cs,gamemode=adventure,tag=!cs_locked_in] at @s run function scenario:count_sheep/lock_in_answer
