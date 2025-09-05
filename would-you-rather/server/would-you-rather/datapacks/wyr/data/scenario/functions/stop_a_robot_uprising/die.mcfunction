scoreboard players set @s death 0
scoreboard players remove @s saru_lives 1
playsound minecraft:entity.skeleton.death master @s ~ ~ ~ 10000 0
tellraw @s[scores={saru_lives=2..}] [{"text":"你已经死了! 你现在有","color":"gold"},{"score":{"objective":"saru_lives","name":"@s"},"color":"red","bold":true},{"text":"条命.","color":"gold","bold":false}]
tellraw @s[scores={saru_lives=1}] [{"text":"你已经死了! 你现在有","color":"gold"},{"score":{"objective":"saru_lives","name":"@s"},"color":"red","bold":true},{"text":"条命.","color":"gold","bold":false}]
tellraw @s[scores={saru_lives=0}] [{"text":"你已经死了! 你输了. ","color":"gold"}]
function scenario:stop_a_robot_uprising/get_items


##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~2 ~ ~ run function scenario:stop_a_robot_uprising/random_guard
##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~-2 ~ ~ run function scenario:stop_a_robot_uprising/random_guard
##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~ ~ ~2 run function scenario:stop_a_robot_uprising/random_guard
##execute as @e[tag=saru_commander,type=zombie,sort=random,limit=1] at @s positioned ~ ~ ~-2 run function scenario:stop_a_robot_uprising/random_guard



execute if entity @s[scores={saru_lives=0}] at @s run function scenario:stop_a_robot_uprising/fail

execute as @a[tag=playing,team=saru] at @s run playsound minecraft:entity.player.death master @s ~ ~ ~ 1 0