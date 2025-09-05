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



execute if entity @s[scores={fans=1}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"text":"做得好, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"selector":"@s","bold":false},{"text":", 你做得不错.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=1}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff000c","bold":true},{"text":"Bob","color":"gray","bold":false},{"text":") ","color":"#ff000c","bold":true},{"selector":"@s","bold":false},{"text":", 你可能会赢.","color":"#d5d5d5","bold":false}]




execute if entity @s[scores={fans=2}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"*sniff*","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"*sniff* ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 你真的赢了?","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=2}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#9958b1","bold":true},{"text":"Sully","color":"#6bbbc2","bold":false},{"text":") ","color":"#9958b1","bold":true},{"text":"我想我会感到快乐, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 但我只知道悲伤.","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=3}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"Meow.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"MEOW! MEOW! MEOW!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=3}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#d7981f","bold":true},{"text":"Cats","color":"#edda3a","bold":false},{"text":") ","color":"#d7981f","bold":true},{"text":"MEEEOOOOOOOOOOOOOOOW!!!!!!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=4}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"text":"耶! ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 干得漂亮!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"selector":"@s","bold":false},{"text":", 你让我想起了那些出色的女巫猎人!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=4}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#82663f","bold":true},{"text":"Darcy","color":"yellow","bold":false},{"text":") ","color":"#82663f","bold":true},{"selector":"@s","bold":false},{"text":", 等你赢了, 也许你可以试试我的跑酷!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=5}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"龙","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"selector":"@s","bold":false},{"text":", 祝你好运, 你是个战士!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"龙","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"text":"展开你的翅膀翱翔吧, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=5}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#8400b5","bold":true},{"text":"龙","color":"#ae46d4","bold":false},{"text":") ","color":"#8400b5","bold":true},{"text":"飞向胜利, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=6}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"selector":"@s","bold":false},{"text":", 你的表现是爆炸性的.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"text":"Boom! 你完成它了, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=6}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#2e51ff","bold":true},{"text":"TNT","color":"#d14343","bold":false},{"text":") ","color":"#2e51ff","bold":true},{"selector":"@s","bold":false},{"text":", boom!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=7}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"给他们看看城里人是怎么做的, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"text":"你们都没有看到没什么呢! ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"着火了!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=7}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#6e5a38","bold":true},{"text":"Marm","color":"#76d3db","bold":false},{"text":") ","color":"#6e5a38","bold":true},{"selector":"@s","bold":false},{"text":"在收割他们的点数!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=8}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"疯狂科学家","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"text":"我疯了!!!!!!!!!!!!!!!!!!!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"疯狂科学家","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", 这个实验做得不错.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=8}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#696969","bold":true},{"text":"疯狂科学家","color":"#c4c4c4","bold":false},{"text":") ","color":"#696969","bold":true},{"selector":"@s","bold":false},{"text":", 科学上说这是不可能的!!!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=9}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"吃瓜观众","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"你在那里, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 你能赢得这场比赛!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"吃瓜观众","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"selector":"@s","bold":false},{"text":", 你让我想起了克伦肖甜瓜!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=9}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#94947b","bold":true},{"text":"吃瓜观众","color":"#a4c44b","bold":false},{"text":") ","color":"#94947b","bold":true},{"text":"我是吃瓜观众, 而你是最好的玩家, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=10}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"如果我能感受到情绪, 我会为你感到高兴, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"selector":"@s","bold":false},{"text":", 你成功了, 操作枚举点值.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=10}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#525252","bold":true},{"text":"CR-Bot","color":"#57f9ff","bold":false},{"text":") ","color":"#9525252","bold":true},{"text":"能够百分百预测的结果, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=11}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"我希望我是你唯一的朋友, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"... :}","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=11}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#5e5541","bold":true},{"text":"Harv","color":"#ff9d00","bold":false},{"text":") ","color":"#5e5541","bold":true},{"text":"我有, 怎么说呢, 给你一个惊喜, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"...","color":"#d5d5d5","bold":false}]



execute if entity @s[scores={fans=12}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"获胜的感觉很棒, 但要永远尊重对手的英勇表现, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"干得好, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 但是别沉溺于骄傲中.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=12}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#635175","bold":true},{"text":"Wise Guardian","color":"#d9d89e","bold":false},{"text":") ","color":"#635175","bold":true},{"text":"胜不骄, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=13}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"这花了你足够长的时间来赢得那个场景, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"老实说, 我期待的更多, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=13}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ded9a0","bold":true},{"text":"Bubba","color":"#f2e016","bold":false},{"text":") ","color":"#ded9a0","bold":true},{"text":"如果我的标准低, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":", 我会说干得好.","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=14}] if score $rand random matches 0 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", 如果你在森林里, 那你更喜欢 '胜利' (PS: 谐音).","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 1 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"selector":"@s","bold":false},{"text":", 你知道什么是棕色还有粘性吗? 一根棍子.(PS: 粘性和棍子英文就一个多Y)","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=14}] if score $rand random matches 2 run tellraw @a [{"text":"","bold":false},{"text":"(","color":"#ad14ff","bold":true},{"text":"P","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"r","color":"green"},{"text":"y","color":"aqua"},{"text":") ","color":"#ad14ff","bold":true},{"text":"马克, 能给我一本书吗? 等等, 那不是你的名字, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]

execute if entity @s[scores={fans=15}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"砖块","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"你是我的灵感来源, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"砖块","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"Go ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"! ","color":"#d5d5d5","bold":false},{"text":"Go ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"! ","color":"#d5d5d5","bold":false},{"text":"GOOO ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!!! ","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=15}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#ff8ff2","bold":true},{"text":"砖块","color":"#ff00e1","bold":false},{"text":") ","color":"#ff8ff2","bold":true},{"text":"给我一个W! 给我呃Q! 给我一个G! dat拼写是什么? ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=16}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", 你证明每个人都错了.","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"text":"你又控制全场了, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":"!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=16}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#09a5de","bold":true},{"text":"Jeb Sheep","color":"#f600ff","bold":false},{"text":") ","color":"#09a5de","bold":true},{"selector":"@s","bold":false},{"text":", 作为绵羊杰布团队的一员, 起来吧!","color":"#d5d5d5","bold":false}]


execute if entity @s[scores={fans=17}] if score $rand random matches 0 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"雪狐","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"selector":"@s","bold":false},{"text":", 雪给他们看你是怎么做到的!","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 1 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"雪狐","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"text":"就跟小事一桩一样, 你会赢的, ","color":"#d5d5d5","bold":false},{"selector":"@s","bold":false},{"text":".","color":"#d5d5d5","bold":false}]
execute if entity @s[scores={fans=17}] if score $rand random matches 2 run tellraw @a [{"text":"(","color":"#e2e4e4","bold":true},{"text":"雪狐","color":"#00fff9","bold":false},{"text":") ","color":"#e2e4e4","bold":true},{"selector":"@s","bold":false},{"text":", 你的得分甚至能高于你的个人最好成绩.","color":"#d5d5d5","bold":false}]
