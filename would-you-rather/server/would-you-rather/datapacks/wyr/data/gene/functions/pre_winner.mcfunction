#purDisabledSlots:2039583,Pose is for gene to say the show is about to be over
# called from show:timer

execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 尽管难以置信, 但我们的时间不多了.","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我相信我们有赢家了!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 大家准备好迎接 '你宁愿' 的赢家了吗?","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我等不及想知道谁赢了!","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 让我们看看谁不是个十足的小丑!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 在节目结束之前，请允许我宣布我们的冠军!","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 朋友们, '你宁愿' 已经结束了, 但是我们还能见到获胜者!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我们快没时间了, 但我们需要知道我们的冠军是谁!","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9