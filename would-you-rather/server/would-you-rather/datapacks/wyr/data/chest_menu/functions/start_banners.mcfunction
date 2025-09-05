##0 default
##1 ice
##2 nether castle
##3 end city
##4 lumber
##5 mine
##6 ocean monument
##7 mushroom
##8 desert
##9 redstone
##10 warped biome
##11 crimson biome
##12 floating island
##13 cake
##14 savannah
##15 riches
##16 princess
##17 honey
##18 dirt 
##19 spooky
##20 bastion
##21 hot tub
##22 cloud
##23 futuristic
##24 steve
##25 creeper
##26 
##27 
##28 
##29 
##30 
##31 
##32 



scoreboard players set @s screen 3
function chest_menu:clear



replaceitem entity @s enderchest.0 white_concrete{HideFlags:63,display:{Name:'[{"text":"默认","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"默认","color":"dark_gray","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=0}] enderchest.0 white_concrete{HideFlags:63,display:{Name:'[{"text":"默认","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"默认","color":"dark_gray","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.1 sunflower{HideFlags:63,display:{Name:'[{"text":"鲜花","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=1}] enderchest.1 sunflower{HideFlags:63,display:{Name:'[{"text":"鲜花","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.2 cartography_table{HideFlags:63,display:{Name:'[{"text":"地球","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=2}] enderchest.2 cartography_table{HideFlags:63,display:{Name:'[{"text":"地球","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.3 bone{HideFlags:63,display:{Name:'[{"text":"海盗头像","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=3}] enderchest.3 bone{HideFlags:63,display:{Name:'[{"text":"海盗头像","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.4 golden_sword{HideFlags:63,display:{Name:'[{"text":"鼻子","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=4}] enderchest.4 golden_sword{HideFlags:63,display:{Name:'[{"text":"鼻子","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.5 golden_apple{HideFlags:63,display:{Name:'[{"text":"Mojang","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=5}] enderchest.5 golden_apple{HideFlags:63,display:{Name:'[{"text":"Mojang","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.6 oak_boat{HideFlags:63,display:{Name:'[{"text":"帆船","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=6}] enderchest.6 oak_boat{HideFlags:63,display:{Name:'[{"text":"帆船","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.7 nether_brick{HideFlags:63,display:{Name:'[{"text":"砖块","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=7}] enderchest.7 nether_brick{HideFlags:63,display:{Name:'[{"text":"砖块","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.8 blaze_rod{HideFlags:63,display:{Name:'[{"text":"X","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=8}] enderchest.8 blaze_rod{HideFlags:63,display:{Name:'[{"text":"X","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.10 cyan_glazed_terracotta{HideFlags:63,display:{Name:'[{"text":"梯度","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=9}] enderchest.10 cyan_glazed_terracotta{HideFlags:63,display:{Name:'[{"text":"梯度","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"普通","color":"dark_green","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.11 iron_bars{locked:1,HideFlags:63,display:{Name:'[{"text":"史莱姆","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"锁住","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_b_10] enderchest.11 pink_wool{HideFlags:63,display:{Name:'[{"text":"史莱姆","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=10}] enderchest.11 pink_wool{HideFlags:63,display:{Name:'[{"text":"史莱姆","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.12 iron_bars{locked:2,HideFlags:63,display:{Name:'[{"text":"稻米","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"锁住","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_b_11] enderchest.12 bowl{HideFlags:63,display:{Name:'[{"text":"稻米","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=11}] enderchest.12 bowl{HideFlags:63,display:{Name:'[{"text":"稻米","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.13 iron_bars{locked:3,HideFlags:63,display:{Name:'[{"text":"冰","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"锁住","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_b_12] enderchest.13 ice{HideFlags:63,display:{Name:'[{"text":"冰","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=12}] enderchest.13 ice{HideFlags:63,display:{Name:'[{"text":"冰","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.14 iron_bars{locked:4,HideFlags:63,display:{Name:'[{"text":"鸭子","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"锁住","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_b_13] enderchest.14 feather{HideFlags:63,display:{Name:'[{"text":"鸭子","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=13}] enderchest.14 feather{HideFlags:63,display:{Name:'[{"text":"鸭子","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"史诗","color":"dark_purple","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.15 iron_bars{locked:5,HideFlags:63,display:{Name:'[{"text":"熊猫","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"传奇","color":"gold","italic":false}]','[{"text":"锁住","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_b_14] enderchest.15 bamboo{HideFlags:63,display:{Name:'[{"text":"熊猫","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"传奇","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=14}] enderchest.15 bamboo{HideFlags:63,display:{Name:'[{"text":"熊猫","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"传奇","color":"gold","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.16 iron_bars{locked:6,HideFlags:63,display:{Name:'[{"text":"王冠","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"传奇","color":"gold","italic":false}]','[{"text":"锁住","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_b_15] enderchest.16 golden_helmet{HideFlags:63,display:{Name:'[{"text":"王冠","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"传奇","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={banners=15}] enderchest.16 golden_helmet{HideFlags:63,display:{Name:'[{"text":"王冠","color":"#ffff40","italic":false,"bold":true}]',Lore:['[{"text":"传奇","color":"gold","italic":false}]','[{"text":"已选择","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}





replaceitem entity @s enderchest.18 barrier{HideFlags:63,clickable:1,display:{Name:'[{"text":"返回","color":"#ff0000","italic":false,"bold":true}]'}}
