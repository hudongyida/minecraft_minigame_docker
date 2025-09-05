##Order:
#Bob
#Sully The Shulker
#Cats
#Darcy
#Dragon
#Blue TNT
#Marm
#Mad Scientist
#Melon Man
#Crbot
#Harv
#Elder Guardian
#Bubba
#Perry
#Brick
scoreboard players set $mod random 3
function random:random

##execute if entity @s[scores={fans=1}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":" "}]



execute if entity @s[scores={fans=1}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":"你输了, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"selector":"@s","bold":false},{"text":", 别放弃.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":"别担心, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]




execute if entity @s[scores={fans=2}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"selector":"@s","bold":false},{"text":", 我知道没有意义...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"我以为你可以照亮我的一天, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"别担心, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 你不像我那么坏...","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=3}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"猫","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meeowww…","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"猫","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meow, meow…","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"猫","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meeowww…","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=4}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"text":"你让我想起了那个可怕的幻术师, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"selector":"@s","bold":false},{"text":", 如果我不是那么小, 我会赢得那个 .","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"text":"...","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=5}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"龙","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"text":"瞄准天空, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"龙","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"selector":"@s","bold":false},{"text":", 你被废了.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"龙","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"selector":"@s","bold":false},{"text":", 现在需要烟花.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=6}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"selector":"@s","bold":false},{"text":", 你失败了.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"text":"看起来你的保险丝电量不足, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"text":"这并没有改善情况, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=7}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"你在那里做得很好, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"那是什么, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"?","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"selector":"@s","bold":false},{"text":", 回家的奶牛不会喜欢这个.","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=8}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"疯狂科学家","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", 没关系, 只要记住三种不成文的击败场景的方法: 1. 2. 3.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"疯狂科学家","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"text":"回学校学习吧, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"疯狂科学家","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", 我没有生气, 我只是失望.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=9}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"吃瓜观众","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"不要担心, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 买一些我的各种瓜!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"吃瓜观众","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"我喜欢甜瓜, 我知道你不喜欢坏瓜, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"吃瓜观众","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"♫ *甜瓜蓝调* ♫","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=10}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"我已经计算出你获胜的几率为 10%, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"Error 410, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"的行动不算数.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"selector":"@s","bold":false},{"text":", 场景失败, 系统关闭.","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=11}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"我以你的负能量为食, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":" * 滴答声 * , ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 时间不多了...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"我感觉到你的恐惧, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]



execute if entity @s[scores={fans=12}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"明智守护者","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"我们应该永远保持从错误中吸取教训, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":". 因为如果我们不这样做, 我们注定会重蹈覆辙.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"明智守护者","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"失败后的成功比第一次尝试就成功更令人印象深刻, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"明智守护者","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"专注于你的目标, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 闭着眼睛是不可能击中任何东西的.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=13}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"那个表现和我的预期差不多, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"我见过乌龟比你做得更好, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"我会支持你的, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 但我只支持胜利者.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=14}] if score $rand random matches 0 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", 情况可能更糟, 你可能被困在一个满是水的洞里. 我知道这听起来很糟糕, 但我是出于好意.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 1 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", 你就像一辆自行车. 你太累了.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 2 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", 我知道有人刚刚赢了, 但是, 就像热带鸟类一样, 巨嘴鸟也玩这个游戏(可能是美式笑话).","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=15}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":" 砖块","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"嘿, 我仍然相信你, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":" 砖块","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"想要我的力量, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"?","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":" 砖块","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"你仍然是我最好的朋友, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=16}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", 你还有这个.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", 没关系, 卷土重来!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", 下次赢得这个!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=17}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"雪狐","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"还有时间, 去淘金吧, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"雪狐","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"我知道你不习惯失败, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", become the scenario-master.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"雪狐","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"留意狼群, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
##