execute as @e[type=area_effect_cloud,tag=scenario_options_title] at @s run data merge entity @s {CustomNameVisible:0b}
kill @e[type=area_effect_cloud,tag=scenario_options_title]

fill -931 62 -142 -931 63 -142 air
fill -944 63 -140 -931 73 -137 air
execute positioned -944 63 -140 run tp @e[tag=diorama_die,dx=13,dy=10,dz=5] 0 0 0
execute positioned -944 63 -140 run kill @e[tag=diorama_die,x=0,y=0,z=0,distance=..10]
execute positioned -944 63 -140 run kill @e[type=item,dx=13,dy=10,dz=5]
execute positioned -944 63 -140 run kill @e[type=falling_block,dx=13,dy=10,dz=5]
execute if score $number scenario_screen matches ..0 run scoreboard players set $number scenario_screen 25
execute if score $number scenario_screen matches 26.. run scoreboard players set $number scenario_screen 1
scoreboard players add $color scenario_screen 1
execute if score $color scenario_screen matches 3.. run scoreboard players set $color scenario_screen 1
execute if score $color scenario_screen matches 1 run team modify scenario_option color blue
execute if score $color scenario_screen matches 2 run team modify scenario_option color yellow

execute if score $number scenario_screen matches 1 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"避开放射性蝙蝠"}]'}
execute if score $number scenario_screen matches 1 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 1 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_arb",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 2 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"成为一名风扇工程师"}]'}
execute if score $number scenario_screen matches 2 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 2 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_bafe",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 3 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"成为矿工"}]'}
execute if score $number scenario_screen matches 3 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"竞争","color":"red","bold":true}]'}
execute if score $number scenario_screen matches 3 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_bam",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 4 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"煮蘑菇汤"}]'}
execute if score $number scenario_screen matches 4 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"合作","color":"green","bold":true}]'}
execute if score $number scenario_screen matches 4 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_cms",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 5 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"数羊"}]'}
execute if score $number scenario_screen matches 5 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 5 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_cs",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 6 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"拆除 TNT "}]'}
execute if score $number scenario_screen matches 6 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"合作","color":"green","bold":true}]'}
execute if score $number scenario_screen matches 6 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_dab",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 7 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"喝危险的药水"}]'}
execute if score $number scenario_screen matches 7 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 7 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_ddp",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 8 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"探索一个废弃的实验室"}]'}
execute if score $number scenario_screen matches 8 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 8 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_eadl",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 9 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"找到小偷"}]'}
execute if score $number scenario_screen matches 9 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 9 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_ft",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 10 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"去钓鱼"}]'}
execute if score $number scenario_screen matches 10 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 10 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_gf",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 11 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"数学考试a级"}]'}
execute if score $number scenario_screen matches 11 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 11 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_gamt",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 12 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"猎杀洞窟怪物"}]'}
execute if score $number scenario_screen matches 12 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"竞争","color":"red","bold":true}]'}
execute if score $number scenario_screen matches 12 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_hcm",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 13 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"逃离岩浆"}]'}
execute if score $number scenario_screen matches 13 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 13 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_ol",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 14 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"跑酷穿过天空村庄"}]'}
execute if score $number scenario_screen matches 14 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 14 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_ptasv",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 15 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"玩躲避球"}]'}
execute if score $number scenario_screen matches 15 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 15 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_pd",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 16 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"玩 \'吉恩说\'"}]'}
execute if score $number scenario_screen matches 16 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 16 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_pgs",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 17 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"弹钢琴"}]'}
execute if score $number scenario_screen matches 17 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 17 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_ptp",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 18 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"救援皇室"}]'}
execute if score $number scenario_screen matches 18 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"协作","color":"light_purple","bold":true}]'}
execute if score $number scenario_screen matches 18 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_rap",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 19 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"暴风雨"}]'}
execute if score $number scenario_screen matches 19 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 19 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_sas",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 20 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"偷一颗宝石"}]'}
execute if score $number scenario_screen matches 20 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"协作","color":"light_purple","bold":true}]'}
execute if score $number scenario_screen matches 20 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_rab",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 21 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"阻止机器人起义"}]'}
execute if score $number scenario_screen matches 21 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"协作","color":"light_purple","bold":true}]'}
execute if score $number scenario_screen matches 21 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_saru",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 22 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"从一场可怕的灾难中幸存下来"}]'}
execute if score $number scenario_screen matches 22 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 22 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_saga",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 23 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"在荒野中生存"}]'}
execute if score $number scenario_screen matches 23 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"协作","color":"light_purple","bold":true}]'}
execute if score $number scenario_screen matches 23 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_sitw",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 24 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"如履薄冰"}]'}
execute if score $number scenario_screen matches 24 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 24 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_wat",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

execute if score $number scenario_screen matches 25 run summon area_effect_cloud -927.0 65 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"在铁砧厂工作"}]'}
execute if score $number scenario_screen matches 25 run summon area_effect_cloud -927.0 64.75 -136 {Tags:["scenario_options_title"],Duration:10000000,CustomNameVisible:1b,CustomName:'[{"text":"游戏玩法: ","color":"aqua"},{"text":"中立","color":"gray","bold":true}]'}
execute if score $number scenario_screen matches 25 run setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_wiaaf",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}
team join scenario_option @e[type=area_effect_cloud,tag=scenario_options_title]




##setblock -931 62 -142 minecraft:structure_block[mode=load]{mode:"LOAD",posY:1,posX:0,posZ:5,name:"minecraft:diorama_ptasv",id:"minecraft:structure_block",sizeX:14,sizeY:11,sizeZ:4,ignoredEntities:0b,showboundingbox:0b,rotation:"CLOCKWISE_180"}

setblock -931 63 -142 redstone_block

function options:scenario/display_status