playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.25 2
scoreboard players add @s ft_thief 1
execute if entity @s[scores={ft_thief=1}] run title @s title [{"text":"通缉: ","color":"red","bold":true},{"selector":"@e[type=area_effect_cloud,limit=1,tag=ft_thief_1_name]","color":"yellow"}]
execute if entity @s[scores={ft_thief=2}] run title @s title [{"text":"通缉: ","color":"red","bold":true},{"selector":"@e[type=area_effect_cloud,limit=1,tag=ft_thief_2_name]","color":"yellow"}]
execute if entity @s[scores={ft_thief=3}] run title @s title [{"text":"通缉: ","color":"red","bold":true},{"selector":"@e[type=area_effect_cloud,limit=1,tag=ft_thief_3_name]","color":"yellow"}]
title @s subtitle [{"text":"找到小偷并殴打他们!","color":"gold","italic":false}]