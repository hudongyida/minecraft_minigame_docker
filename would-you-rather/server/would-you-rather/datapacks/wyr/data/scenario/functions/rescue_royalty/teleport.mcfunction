team add rap
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=blue_select] run team join rap @a[tag=playing,scores={scenario_sel=1}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=yellow_select] run team join rap @a[tag=playing,scores={scenario_sel=2}]
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=blue_select] run team modify rap color blue
execute if entity @e[tag=chosen,type=area_effect_cloud,name="Rescue royalty",tag=yellow_select] run team modify rap color yellow
team modify rap seeFriendlyInvisibles false
team modify rap collisionRule never
team modify rap friendlyFire false
scoreboard players set @a[team=rap,tag=playing] game_countdown 120


gamemode adventure @a[team=rap,gamemode=!adventure,tag=playing]
effect give @a[team=rap,gamemode=adventure] invisibility 10000 255 true
effect give @a[team=rap,gamemode=adventure] weakness 10000 255 true
effect give @a[team=rap,gamemode=adventure] blindness 10000 255 true
effect give @a[team=rap,gamemode=adventure] slowness 10000 255 true
effect give @a[team=rap,gamemode=adventure] jump_boost 10000 200 true
effect give @a[team=rap,gamemode=adventure] levitation 1 255 true

tp @a[team=rap,gamemode=adventure] 5000 66 2 -90 5
spawnpoint @a[team=rap,gamemode=adventure] 5000 66 2

tellraw @a[team=rap,tag=!tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"杀死一名骑士以获得他们的钥匙, 然后保护塔顶.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]