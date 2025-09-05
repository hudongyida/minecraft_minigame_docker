scoreboard players set @s vending_machine 100
scoreboard players set $mod vending_machine 15
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score $rand vending_machine run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation $rand vending_machine %= $mod vending_machine
kill @e[type=area_effect_cloud,tag=random]
execute if score $rand vending_machine matches 0 run give @p apple{clickable:0,HideFlags:63,display:{Name:'{"text":"苹果","italic":false,"color":"red"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 1 run give @p bread{clickable:0,HideFlags:63,display:{Name:'{"text":"面包","italic":false,"color":"gold"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 2 run give @p pufferfish{clickable:0,HideFlags:63,display:{Name:'{"text":"河豚","italic":false,"color":"yellow"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 3 run give @p cooked_salmon{clickable:0,HideFlags:63,display:{Name:'{"text":"鲑鱼","italic":false,"color":"red"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 4 run give @p cookie{clickable:0,HideFlags:63,display:{Name:'{"text":"曲奇","italic":false,"color":"yellow"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 5 run give @p melon_slice{clickable:0,HideFlags:63,display:{Name:'{"text":"西瓜","italic":false,"color":"green"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 6 run give @p dried_kelp{clickable:0,HideFlags:63,display:{Name:'{"text":"海带","italic":false,"color":"#0b4200"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 7 run give @p spider_eye{clickable:0,HideFlags:63,display:{Name:'{"text":"蜘蛛眼","italic":false,"color":"#8b0000"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 8 run give @p baked_potato{clickable:0,HideFlags:63,display:{Name:'{"text":"土豆","italic":false,"color":"#ffd988"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 9 run give @p sweet_berries{clickable:0,HideFlags:63,display:{Name:'{"text":"浆果","italic":false,"color":"#e64054"}'},lobby_die:1,vending_machine:1}
execute if score $rand vending_machine matches 10 run give @p potion{clickable:0,HideFlags:63,display:{Name:'{"text":"能量饮料","italic":false,"color":"dark_blue"}'},lobby_die:1,vending_machine:2,CustomPotionColor:2714506,CustomPotionEffects:[{Id:1,Amplifier:2,ShowIcon:1b,ShowParticles:1b,Duration:300}]}
execute if score $rand vending_machine matches 11 run give @p potion{clickable:0,HideFlags:63,display:{Name:'{"text":"巧克力牛奶","italic":false,"color":"#513106"}'},lobby_die:1,vending_machine:2,CustomPotionColor:5320966}
execute if score $rand vending_machine matches 12 run give @p potion{clickable:0,HideFlags:63,display:{Name:'{"text":"瓶装水","italic":false,"color":"blue"}'},lobby_die:1,vending_machine:2,Potion:"minecraft:water"}
execute if score $rand vending_machine matches 13 run give @p potion{clickable:0,HideFlags:63,display:{Name:'{"text":"柠檬水","italic":false,"color":"yellow"}'},lobby_die:1,vending_machine:2,CustomPotionColor:16770048}
execute if score $rand vending_machine matches 14 run give @p potion{clickable:0,HideFlags:63,display:{Name:'{"text":"奶昔","italic":false,"color":"#d180dd"}'},lobby_die:1,vending_machine:2,CustomPotionColor:13730013}
playsound minecraft:block.dispenser.dispense master @p ~ ~ ~ 100000 1
