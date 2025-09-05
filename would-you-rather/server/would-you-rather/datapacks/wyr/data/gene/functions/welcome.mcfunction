#purDisabledSlots:2039583,Pose is for gene to welcome people to WYR
# called from show:timer

execute as @r at @s run function gene:gene_random
execute if score $Rand gene matches 0 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 在那里我们将通过危险了解更多的选手!","color":"aqua"}] 
execute if score $Rand gene matches 1 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我们将用一亿美元的预算玩一场经典的校园游戏!","color":"aqua"}] 
execute if score $Rand gene matches 2 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 让我们知道你朋友对你的真实看法!","color":"aqua"}] 
execute if score $Rand gene matches 3 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我们将问出那个古老的问题!","color":"aqua"}] 
execute if score $Rand gene matches 4 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 每个人都是赢家!","color":"aqua"}] 
execute if score $Rand gene matches 5 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我们将在那里思考世界上最好的假设性问题!","color":"aqua"}] 
execute if score $Rand gene matches 6 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我们能看出谁是小丑, 谁不是小丑!","color":"aqua"}] 
execute if score $Rand gene matches 7 run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":">","color":"blue"},{"text":" 我们将在那里见证许多娱乐活动!","color":"aqua"}] 
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9