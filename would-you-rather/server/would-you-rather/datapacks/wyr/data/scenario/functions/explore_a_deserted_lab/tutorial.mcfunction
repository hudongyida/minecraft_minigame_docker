##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=eadl] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=eadl_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl] run schedule function scenario:explore_a_deserted_lab/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] run title @a[team=eadl,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Explore a deserted lab\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] run title @a[team=eadl,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"教程","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=5}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=75}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Explore a deserted lab\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=75}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=90}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"三个红石组件将出现在实验室中.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=90}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=160}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8014 58.0 37 0 90
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=160}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"蜂鸣声的频率会告诉你, 你正在接近某个组件.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=160}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=270}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8014 54.0 37 0 0
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=270}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"每个玩家的目标是在时间用完之前收集齐三个组件并返回船上.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=270}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=380}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8029 54 13 90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=380}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"水很凉! 泡在水里会受到伤害.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=380}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=440}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8042 55.25 9 -90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=440}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"实验室里到处都是骷髅.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=440}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=490}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8040 57.5 9 -90 80
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=490}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"有时, 这些骷髅会变成危险的凋灵骷髅.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=490}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=540}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8040 56.5 9 90 40
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=540}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"你无法伤害到这些生物, 所以最好的方法就是跑!","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=540}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=590}] run tp @e[type=armor_stand,tag=eadl_tutorial] 8027 59 9 -90 30
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=590}] run tellraw @a[team=eadl,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"另外骷髅不能离开实验室.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=590}] as @a[team=eadl,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=eadl,scores={tutorial=640}] run function scenario:explore_a_deserted_lab/tutorial_end


##Effects:
