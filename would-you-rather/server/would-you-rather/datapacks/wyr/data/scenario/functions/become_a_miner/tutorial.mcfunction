##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=bam] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=bam_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=bam] run schedule function scenario:become_a_miner/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] run title @a[team=bam,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Become a miner\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] run title @a[team=bam,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"教程","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=5}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=75}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Become a miner\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=75}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"乘坐电梯下到矿井后, 跟随粒子找到钻石矿.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25


execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=170}] run tp @e[type=armor_stand,tag=bam_tutorial] 9019 71 30 -45 5
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=170}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"使用 幸运 III 的镐子来挖掉钻石矿. 谁挖掉就归谁所有.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=170}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=270}] run tp @e[type=armor_stand,tag=bam_tutorial] 8998 78 -13 -45 10
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=270}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"获得7颗钻石以赢得本场景.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=270}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=330}] run tp @e[type=armor_stand,tag=bam_tutorial] 9002 71 37 112.5 -10
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=330}] run tellraw @a[team=bam,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"一旦所有的钻石矿挖掉, 倒计时将缩短到5秒. 任何没有得到所需钻石数量的人判输.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=330}] as @a[team=bam,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=450}] run function scenario:become_a_miner/tutorial_end


##Effects:
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90..169}] run scoreboard players set $tutorial bam_timer 110
execute if entity @a[tag=in_tutorial,tag=playing,team=bam,scores={tutorial=90..169}] positioned 9028 70 -1 rotated 90 5 run function scenario:become_a_miner/tutorial_tracker