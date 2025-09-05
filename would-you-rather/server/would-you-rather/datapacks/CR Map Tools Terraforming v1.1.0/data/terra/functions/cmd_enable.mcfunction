tag @s add crmTterraform
scoreboard players set @s crmTshape 0
scoreboard players set @s crmTraycasthit 0
scoreboard players set $random_texture_mod crmTrandom 2
tellraw @p {"text":"你已进入地形改造模式!","color":"aqua"}
tellraw @p ["",{"text":">> ","bold":true,"color":"dark_green"},{"text":"使用列表:","underlined":true,"color":"dark_blue"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [指示颗粒]:","bold":true,"color":"blue"},{"text":" (被动) ","color":"gold"},{"text":"你周围有黄色和浅蓝色颗粒, 表明您处于地形改造模式.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [球体工具]:","bold":true,"color":"blue"},{"text":" (雪球) ","color":"gold"},{"text":"扔雪球会产生一个大的黄色球体, 取代空气.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [3 × 3 × 3 工具]:","bold":true,"color":"blue"},{"text":" (蝙蝠刷怪蛋) ","color":"gold"},{"text":"创建一个大的 3 x 3 x 3 黄色立方体.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [上栏工具]:","bold":true,"color":"blue"},{"text":" (蜜蜂刷怪蛋) ","color":"gold"},{"text":"创建一个向上移动 6 个方块的黄色柱子，.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [下栏工具]:","bold":true,"color":"blue"},{"text":" (烈焰人刷怪蛋) ","color":"gold"},{"text":"创建一个向下移动 6 个方块的黄色柱子.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [形状工具]:","bold":true,"color":"blue"},{"text":" (猫刷怪蛋) ","color":"gold"},{"text":"丢出以在你正在查看的方块上创建形状.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [纹理工具]:","bold":true,"color":"blue"},{"text":" (洞穴蜘蛛刷怪蛋) ","color":"gold"},{"text":"丢出以设置你正在查看的方块不同的纹理.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [线条工具]:","bold":true,"color":"blue"},{"text":" (潜影贝刷怪蛋) ","color":"gold"},{"text":"生成 2 个潜影贝, 然后在聊天中按下按钮, 在两个最近的潜影贝之间划一条线.","color":"yellow"}]