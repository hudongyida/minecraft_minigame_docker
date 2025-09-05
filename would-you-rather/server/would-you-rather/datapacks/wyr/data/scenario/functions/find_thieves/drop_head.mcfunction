execute if entity @s[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..,ft_drop_head=1..,ft_cooldown=0}] at @s anchored eyes run function scenario:find_thieves/summon_head_display
title @s[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..,ft_drop_head=1..,ft_cooldown=1..}] actionbar [{"text":"你现在无法看到小偷显示. 请稍后再试.","color":"red"}]
playsound minecraft:block.note_block.didgeridoo master @s[tag=playing,team=ft,gamemode=adventure,scores={ft_timer=35..,ft_drop_head=1..,ft_cooldown=1..}] ~ ~ ~ 1000 1
scoreboard players reset @s ft_drop_head
