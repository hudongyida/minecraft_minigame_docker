tag @s add ft_punched_thief
scoreboard players set @s ft_timer -60

clear @s

execute if entity @s[scores={ft_thief=1}] as @e[type=skeleton,tag=ft_thief_1,sort=nearest,limit=1] at @s run function scenario:find_thieves/caught_thief
execute if entity @s[scores={ft_thief=2}] as @e[type=skeleton,tag=ft_thief_2,sort=nearest,limit=1] at @s run function scenario:find_thieves/caught_thief
execute if entity @s[scores={ft_thief=3}] as @e[type=skeleton,tag=ft_thief_3,sort=nearest,limit=1] at @s run function scenario:find_thieves/caught_thief


title @s title [{"text":"小偷抓到了!","color":"red"}]
execute if entity @s[scores={ft_thief=1}] run title @s subtitle [{"text":"剩下两个.","color":"gold"}]
execute if entity @s[scores={ft_thief=2}] run title @s subtitle [{"text":"剩下一个.","color":"gold"}]
execute if entity @s[scores={ft_thief=3}] run title @s subtitle [{"text":"干得漂亮!","color":"gold"}]
execute if entity @s[scores={ft_thief=3}] run function scenario:find_thieves/success