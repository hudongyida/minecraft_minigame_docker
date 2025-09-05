execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 很好的尝试.","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 这太令人失望了.","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 这很艰难.","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" Oof.","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 差一点!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 有那么难吗?","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 你只少试过了!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 节目结束后来找我, 我会给你上一些课.","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.9