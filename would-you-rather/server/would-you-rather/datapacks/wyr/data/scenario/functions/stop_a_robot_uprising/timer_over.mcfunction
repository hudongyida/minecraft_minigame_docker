
execute as @a[tag=playing,team=saru,gamemode=adventure] at @s run function scenario:stop_a_robot_uprising/fail
tellraw @a[tag=playing,team=saru] [{"text":"时间到了! 机器人幸存了下来.","color":"gray"}]