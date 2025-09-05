##Timers and spectating and opening msg:
scoreboard players add @a[tag=in_tutorial,tag=playing,team=rap] tutorial 1
execute as @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=5..}] at @s run spectate @e[type=armor_stand,tag=rap_tutorial,sort=nearest,limit=1] @s
execute if entity @a[tag=in_tutorial,tag=playing,team=rap] run schedule function scenario:rescue_royalty/tutorial 1t

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=5}] run title @a[team=rap,tag=playing,tag=!no_tutorial] subtitle [{"selector":"@e[type=area_effect_cloud,name=\"Rescue royalty\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=5}] run title @a[team=rap,tag=playing,tag=!no_tutorial] title [{"text":"| ","color":"dark_green"},{"text":"教程","color":"green","bold":true},{"text":" |","color":"dark_green"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=5}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1.25
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=5}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=75}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"selector":"@e[type=area_effect_cloud,name=\"Rescue royalty\"]"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=75}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1

##


##Messages and teleports


execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=90}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"皇室成员在塔顶.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=90}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=160}] run tp @e[type=armor_stand,tag=rap_tutorial] 5080 73 2 -90 -40
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=160}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"在你的背包拿出纸, 将看到一个粒子轨迹指向塔.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=160}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=250}] run tp @e[type=armor_stand,tag=rap_tutorial] 5092 86 -11 0 25
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=250}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"通往塔顶的入口都是锁着的.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=250}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=320}] run tp @e[type=armor_stand,tag=rap_tutorial] 5096 68 2 90 5
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=320}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"三位骑士会在城堡附近出现.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=320}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=390}] run tp @e[type=armor_stand,tag=rap_tutorial] 5094 69 2 90 70
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=390}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"他们会在死亡时掉落钥匙.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=390}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=460}] run tp @e[type=armor_stand,tag=rap_tutorial] 5092.0 74 14 180 10
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=460}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"另外很多怪物在守卫着该地区.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=460}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=530}] run tp @e[type=armor_stand,tag=rap_tutorial] 5089 74 -12 -90 20
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=530}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"每次击杀怪物都会在短时间内为你提供治疗, 抗性和力量.","color":"gray"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=530}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=620}] run tp @e[type=armor_stand,tag=rap_tutorial] 5092 85.5 9 180 5
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=620}] run tellraw @a[team=rap,tag=playing,tag=!no_tutorial] [{"text":"- ","color":"dark_gray"},{"text":"在时间耗尽之前到达塔顶, 若死亡则失败.","color":"#e2e2e2"}]
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=620}] as @a[team=rap,tag=playing,tag=!no_tutorial] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.25

##Remember to alternate message colors between gray and #e2e2e2

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=710}] run function scenario:rescue_royalty/tutorial_end


##Effects:



execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=160..249}] run function scenario:rescue_royalty/call_tutorial_tracker

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=310}] run summon skeleton 5092 67 2 {NoAI:1b,Rotation:[-90f,0f],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Health:40s,Attributes:[{Attribute:"generic.follow_range",Base:50}],DeathLootTable:"minecraft:rap/knight",Tags:["rap_die","rap_enemy","rap_knight"],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:6}]}},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-36746217,-650034142,-1753485129,-862805102],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGYzNmVhMGFhNTU0ZTJjNmI4YjkxOTE2ODJjOThhODk2YTYyNTQ1YzMwYjBlMGNhOWRhNjQ4YTQ3YjdhOTk1YyJ9fX0="}]}}}}]}

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=390}] run kill @e[type=skeleton,tag=rap_knight]

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=450}] run summon magma_cube 5093 73 7 {Size:1,Tags:["rap_die"]}
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=450}] run summon magma_cube 5090 73 -3 {Size:2,Tags:["rap_die"]}

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=450}] run summon blaze 5090 73 -3 {Tags:["rap_die"]}
execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=450}] run summon piglin 5090 73 -3 {IsImmuneToZombification:1b,Tags:["rap_die"],HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"s",lvl:1}]}},{}]}

execute if entity @a[tag=in_tutorial,tag=playing,team=rap,scores={tutorial=450}] run summon skeleton 5091 73 -12 {Tags:["rap_die"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"s",lvl:1}]}},{}]}
##

##