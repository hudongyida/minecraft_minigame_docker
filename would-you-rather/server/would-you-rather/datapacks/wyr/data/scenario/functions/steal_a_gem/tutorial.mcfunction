##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=rab] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=rab_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=rab] run schedule function scenario:steal_a_gem/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] run title @a[team=rab,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Steal a gem\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] run title @a[team=rab,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"教程","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=5}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=75}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Steal a gem\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=75}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=90}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"不要在门口守卫面前拿出剑.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=90}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] run tp @e[type=armor_stand,tag=rab_tutorial] 15936.0 75 0 -90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"避开大厦内任何巡逻的警卫.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=150}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run bossbar set steal_a_gem:suspicion visible true
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run tp @e[type=armor_stand,tag=rab_tutorial] 15934 72 13 -70 10
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"如果警卫对你警觉就会攻击你. 你可以在boss栏看见怀疑等级.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=200}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] run tp @e[type=armor_stand,tag=rab_tutorial] 15954 80.5 -13 90 90
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"掠夺办公室和小隔间的道具&物品.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=320}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] run tp @e[type=armor_stand,tag=rab_tutorial] 15929 71 0 90 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"获得道具&物品后, 到大厦后侧的电梯井并前往金库.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=380}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] run tp @e[type=armor_stand,tag=rab_tutorial] 15948 64 0 -90 15
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"从金库中取出宝石. 一旦金库打开, 警报就会触发, 警卫会集体出动.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=460}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580}] run tp @e[type=armor_stand,tag=rab_tutorial] 15939 71 1 162 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"回到楼下, 跟着粒子追踪器找到你的卡车.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=660}] run tp @e[type=armor_stand,tag=rab_tutorial] 15927 71 -23 -80 5
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=660}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"携带宝石靠近后, 卡车后车门就会打开.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=660}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] run tp @e[type=armor_stand,tag=rab_tutorial] 15931 72 -24 180 0
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] run tellraw @a[team=rab,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"一旦宝石到达卡车, 在倒计时结束前到达卡车的玩家都将获胜.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=740}] as @a[team=rab,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25
##Remember to alternate message colors between gray and #e2e2e2



##
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=840}] run function scenario:steal_a_gem/tutorial_end


##Effects:

execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580..659}] run scoreboard players set $tutorial rab_timer 100
execute if entity @a[tag=in_tutorial,tag=playing,team=rab,scores={tutorial=580..659}] positioned 15931 70 -25 rotated -15 0 run function scenario:steal_a_gem/tutorial_tracker