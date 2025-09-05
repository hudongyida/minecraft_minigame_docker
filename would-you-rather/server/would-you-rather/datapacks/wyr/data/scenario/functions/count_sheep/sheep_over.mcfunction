scoreboard players set $launch cs_sheep -1
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue cs_seconds
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Count sheep",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow cs_seconds
tellraw @a[tag=playing,team=cs] [{"text":"-=- ","color":"gray","bold":true},{"text":"所有的羊都已经飞出了! 调整你的猜测, 然后丢出铁栏杆或等待时间结束自动锁定你的答案!","bold":false,"color":"white"}]
execute as @a[tag=playing,team=cs] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100000 0
##Make it go into final phase here.