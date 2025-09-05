##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=cs] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=cs_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=cs] run schedule function scenario:count_sheep/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=5}] run title @a[team=cs,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Count sheep\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=5}] run title @a[team=cs,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"教程","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=5}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=5}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=75}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Count sheep\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=75}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=90}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"羊会从卧室顶飞过.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=90}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=140}] run tp @e[type=armor_stand,tag=cs_tutorial] 36000 66.5 0 0 -90
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=140}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"你的目标是数出羊的确切数量.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=140}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=200}] run tp @e[type=armor_stand,tag=cs_tutorial] 36005 68 1 125 10
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=200}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"从你的背包中丢出绿色床, 将你的猜测加一.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=200}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=280}] run tp @e[type=armor_stand,tag=cs_tutorial] 35995 68 1 -125 10
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=280}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"丢出红色床则使你的猜测减一.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=280}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=340}] run tp @e[type=armor_stand,tag=cs_tutorial] 36000 66.5 5 180 -45
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=340}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"另外羊毛块也会飞过房顶. 切记不要算进去.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=340}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=420}] run tp @e[type=armor_stand,tag=cs_tutorial] 36000 70 0 0 90
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=420}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"一旦所有的羊都飞完, 你只有几秒钟的时间来调整你的猜测.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=420}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=520}] run tp @e[type=armor_stand,tag=cs_tutorial] 36004 67 -2 190 5
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=520}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"丢出铁栅栏来确定你的答案.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=520}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=580}] run tp @e[type=armor_stand,tag=cs_tutorial] 36006 67.5 3 110 0
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=580}] run tellraw @a[team=cs,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"错误答案会让你失败.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=580}] as @a[team=cs,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=640}] run function scenario:count_sheep/tutorial_end


##Effects:



execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=170}] run summon minecraft:sheep 36015.0 71 0 {Rotation:[-90.0f,0.0f],Motion:[-2.25d,1.25d,0.0d],Health:1,Tags:["cs_sheep","cs_die","cs_color_change"]}


execute if entity @a[tag=in_tutorial,tag=playing,team=cs,scores={tutorial=370}] run summon minecraft:falling_block 36000 71 -14.0 {BlockState:{Name:"minecraft:white_wool"},Motion:[0.0d,1d,1d],Health:1,Tags:["cs_fake","cs_die"],Time:550,DropItem:0}


##