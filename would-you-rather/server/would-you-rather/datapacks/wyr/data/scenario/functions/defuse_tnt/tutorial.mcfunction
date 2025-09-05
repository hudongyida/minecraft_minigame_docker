##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=dab] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=dab_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=dab] run schedule function scenario:defuse_tnt/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] run title @a[team=dab,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Defuse TNT\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] run title @a[team=dab,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"教程","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=5}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=75}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Defuse TNT\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=75}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=90}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"在此场景开始时, 会随机生成三色方块的组合.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=90}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=150}] run tp @e[type=armor_stand,tag=dab_tutorial] 25991 79 5 90 68
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=150}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"若要猜测组合, 请把你背包中的方块放在灰色混凝土粉末上. ","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=150}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250}] run tp @e[type=armor_stand,tag=dab_tutorial] 25994 78 5 90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"在你猜完之后, 三种颜色的粒子会出现, 给予你关于组合的提示.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=330}] run tp @e[type=armor_stand,tag=dab_tutorial] 25987 79 5 -90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=330}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"如果你看到绿色, 这意味着你猜的其中一种颜色是在组合中, 且位置正确.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=330}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=470}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"如果是深蓝色的粒子, 则表示你猜的其中一种颜色虽然在组合中, 但不在正确的位置上.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=470}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=610}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"而红色粒子则表示你所猜测的其中一种颜色根本不在组合中.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=610}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710}] run tp @e[type=armor_stand,tag=dab_tutorial] 25993 78 2 47.5 0
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"如果看到浅绿色粒子, 这意味着你猜的颜色之一即在组合中, 也在正确的位置, 但还有同色存在于组合中.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=870}] run tp @e[type=armor_stand,tag=dab_tutorial] 25982 79 12 180 0
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=870}] run tellraw @a[team=dab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"你有七次猜测机会. 确保在机会耗尽之前或是倒计时归零之前确定正确的组合.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=870}] as @a[team=dab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


##Remember to alternate message colors between gray and #e2e2e2



#
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=990}] run function scenario:defuse_tnt/tutorial_end


##Effects:

#place blocks
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=170}] run setblock 25990 77 6 minecraft:lime_concrete
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=170}] run playsound minecraft:block.stone.place master @a 25990 77 6 1 1
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=180}] run setblock 25990 77 5 minecraft:purple_concrete
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=180}] run playsound minecraft:block.stone.place master @a 25990 77 5 1 1
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=190}] run setblock 25990 77 4 minecraft:red_concrete
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=190}] run playsound minecraft:block.stone.place master @a 25990 77 4 1 1


#green
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250..709}] run particle dust 0 1 0 1 25989 79.5 5.5 0 0 0 0 1 force @a
#blue
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250..709}] run particle dust 0.25 0.25 1 1 25989 79.0 5.5 0 0 0 0 1 force @a
#red
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=250..709}] run particle dust 1 0 0 1 25989 78.5 5.5 0 0 0 0 1 force @a
#aqua
execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710..869}] run particle dust 0 1 0.75 1 25989 78.5 5.5 0 0 0 0 1 force @a

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710..869}] run particle dust 1 0 0 1 25989 79.5 5.5 0 0 0 0 1 force @a

execute if entity @a[tag=in_tutorial,tag=playing,team=dab,scores={tutorial=710..869}] run particle dust 1 0 0 1 25989 79.0 5.5 0 0 0 0 1 force @a