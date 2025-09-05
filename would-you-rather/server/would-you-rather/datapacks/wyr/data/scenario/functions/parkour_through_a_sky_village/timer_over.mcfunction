execute as @a[tag=playing,gamemode=adventure,team=ptasv] at @s run function scenario:parkour_through_a_sky_village/fail
tellraw @a[tag=playing,team=ptasv] [{"text":"已经没有时间了. 表演结束.","color":"gray"}]