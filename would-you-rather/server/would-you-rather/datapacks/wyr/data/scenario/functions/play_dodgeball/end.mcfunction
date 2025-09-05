scoreboard players set $pd active_scenario 0
execute unless entity @a[tag=playing,team=pd,tag=success] if score $rand pd_random matches 0 run tellraw @a[tag=playing,team=pd] [{"text":"<裁判>","color":"light_purple","bold":true},{"text":" 你们出局了! ","bold":false},{"text":"红队胜利!","color":"red"}]
execute unless entity @a[tag=playing,team=pd,tag=success] if score $rand pd_random matches 1 run tellraw @a[tag=playing,team=pd] [{"text":"<裁判>","color":"light_purple","bold":true},{"text":" 你们出局了! ","bold":false},{"text":"蓝队胜利!","color":"blue"}]
execute if entity @a[tag=playing,team=pd,tag=success] if score $rand pd_random matches 0 run tellraw @a[tag=playing,team=pd] [{"text":"<裁判>","color":"light_purple","bold":true},{"text":" 潜影贝被骗了! ","bold":false},{"text":"蓝队胜利!","color":"blue"}]
execute if entity @a[tag=playing,team=pd,tag=success] if score $rand pd_random matches 1 run tellraw @a[tag=playing,team=pd] [{"text":"<裁判>","color":"light_purple","bold":true},{"text":" 潜影贝被骗了! ","bold":false},{"text":"红队胜利!","color":"red"}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=blue_select] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Play dodgeball",tag=yellow_select] run scoreboard objectives setdisplay sidebar.team.yellow
execute as @a[tag=playing,team=pd] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.5
tp @e[tag=die,x=21000,y=66,z=0,distance=..200] 0 2 0
kill @e[tag=die,x=21000,y=66,z=0,distance=..200]
scoreboard players set $time pd_timer -1
schedule function scenario:check_active_scenarios 40t