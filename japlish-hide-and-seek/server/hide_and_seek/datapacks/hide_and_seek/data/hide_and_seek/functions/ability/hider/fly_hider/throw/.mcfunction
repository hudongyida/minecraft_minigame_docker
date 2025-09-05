# 雪玉を投げる
#snowballのタグ
data modify storage macro: throw_snowball.tag set value "fly_hider_module"
#snowballのCustomModelData
data modify storage macro: throw_snowball.model set value "1"
#no_gravity
data modify storage macro: throw_snowball.gravity set value "false"
#motion
data modify storage macro: throw_snowball.motion set value "1"
#ride
data modify storage macro: throw_snowball.ride set value "true"
#ride用item_displayの内容
data modify storage macro: throw_snowball.ride_contents set value 'item:{id:"minecraft:dirt",Count:1b,tag:{CustomModelData:2}}'
#関数を実行
function hide_and_seek:.util/throw_snowball/


#処理終了
tag @e[type=snowball,tag=fly_hider_module,tag=not_yet,sort=nearest,limit=1] remove not_yet


#演出等
execute at @s run particle minecraft:campfire_cosy_smoke ~0.5 ~ ~0.5 1.5 1.5 1.5 0 100 force @a
execute at @s run particle minecraft:smoke ~0.5 ~ ~0.5 1 1 1 0.1 50 force @a
execute at @s run playsound minecraft:entity.phantom.ambient master @a
