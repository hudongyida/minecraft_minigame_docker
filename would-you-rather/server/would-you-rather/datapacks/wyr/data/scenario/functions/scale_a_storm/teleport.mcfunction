team add sas
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=blue_select] run team join sas @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=yellow_select] run team join sas @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=blue_select] run team modify sas color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Scale a storm",tag=yellow_select] run team modify sas color yellow
team modify sas seeFriendlyInvisibles false
team modify sas collisionRule never
team modify sas friendlyFire false
scoreboard players set @a[team=sas,tag=playing] game_countdown 120


gamemode adventure @a[team=sas,gamemode=!adventure,tag=playing]
effect give @a[team=sas,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=sas,gamemode=adventure] weakness 10000 255 true
effect give @a[team=sas,gamemode=adventure] blindness 10000 255 true
effect give @a[team=sas,gamemode=adventure] slowness 10000 255 true
effect give @a[team=sas,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=sas,gamemode=adventure] levitation 1 255 true

tp @a[team=sas,gamemode=adventure] 2998 15 -6 -30 -30
spawnpoint @a[team=sas,gamemode=adventure] 2998 15 -6


tellraw @a[team=sas,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"使用三叉戟穿过云层正下方的方格圆圈中.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]