execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 干得好!","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 做到漂亮!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我很自豪.","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我就知道你能行!","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 你可以的!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 给我留下了深刻的印象!","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我自己也没办法做得更好了.","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我最喜欢你赢得这场比赛!","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9