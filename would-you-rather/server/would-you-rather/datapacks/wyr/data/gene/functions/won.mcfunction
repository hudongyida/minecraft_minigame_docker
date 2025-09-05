execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 优秀!","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 了不起的方法!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 你从一开始就是我的最爱.","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 这并不难, 对吧?","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 更多的分数, 更多的胜利!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 你当时非常冷静.","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 你是很棒的!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 你可以得到更多的点数.","color":"aqua"}] 
execute as @a[tag=just_played] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
tag @a remove just_played