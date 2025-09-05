execute if score $time showstart matches 7050 run function awards:points
execute if score $time showstart matches 7050 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"是时候颁奖了!","color":"aqua"}] 
execute if score $time showstart matches 7050 run clone -949 55 11 -921 65 12 -949 86 12
##
execute if score $time showstart matches 7050 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 7130 run tag @e[type=area_effect_cloud,tag=award,tag=!chosen_award,sort=random,limit=1] add choose_award
execute if score $time showstart matches 7130 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"第一个是","color":"aqua"},{"selector":"@e[type=area_effect_cloud,tag=award,tag=!chosen_award,tag=choose_award]"},{"text":"奖.","color":"dark_aqua","bold":true}] 
execute if score $time showstart matches 7130 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 7200 run function awards:announce_criteria
execute if score $time showstart matches 7260 run function awards:announce_winner
execute if score $time showstart matches 7270 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7280 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7290 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7300 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7310 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7320 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points


execute if score $time showstart matches 7330 run tag @e[type=area_effect_cloud,tag=award,tag=!chosen_award,sort=random,limit=1] add choose_award
execute if score $time showstart matches 7330 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"第二个, 我们是","color":"aqua"},{"selector":"@e[type=area_effect_cloud,tag=award,tag=!chosen_award,tag=choose_award]"},{"text":"奖.","color":"dark_aqua","bold":true}] 
execute if score $time showstart matches 7330 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 7400 run function awards:announce_criteria
execute if score $time showstart matches 7460 run function awards:announce_winner
execute if score $time showstart matches 7470 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7480 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7490 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7490 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7500 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7510 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7520 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points



execute if score $time showstart matches 7530 run tag @e[type=area_effect_cloud,tag=award,tag=!chosen_award,sort=random,limit=1] add choose_award
execute if score $time showstart matches 7530 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"最后但同样重要的是","color":"aqua"},{"selector":"@e[type=area_effect_cloud,tag=award,tag=!chosen_award,tag=choose_award]"},{"text":"奖.","color":"dark_aqua","bold":true}] 
execute if score $time showstart matches 7530 as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
execute if score $time showstart matches 7600 run function awards:announce_criteria
execute if score $time showstart matches 7660 run function awards:announce_winner
execute if score $time showstart matches 7670 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7680 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7690 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7700 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7710 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7720 as @a[scores={adjust_points=1..}] at @s run function show:adjust_points
execute if score $time showstart matches 7730 run function show:reset_tv
execute if score $time showstart matches 7730 run scoreboard players set $time showstart 5999
