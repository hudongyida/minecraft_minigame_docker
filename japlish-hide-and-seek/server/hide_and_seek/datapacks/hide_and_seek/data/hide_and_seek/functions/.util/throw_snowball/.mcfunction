#マクロで実行用 function hide_and_seek:.util/throw_snowball/
#snowballのタグ             $(tag) test
#snowballのCustomModelData  $(model) 1
#no_gravity                 $(gravity) true false
#motion                     $(motion) 0.5 1
#item_displayのride         $(ride) true false
#ride用item_displayの内容　　$(ride_contents) item:{id:"xxx",Count:1,tag:{CustomModelData:x}}

#記述用---------------------------------------------------
# 雪玉を投げる
#snowballのタグ
#data modify storage macro: throw_snowball.tag set value ""
#snowballのCustomModelData
#data modify storage macro: throw_snowball.model set value ""
#no_gravity
#data modify storage macro: throw_snowball.gravity set value ""
#motion
#data modify storage macro: throw_snowball.motion set value ""
#ride
#data modify storage macro: throw_snowball.ride set value ""
#ride用item_displayの内容
#data modify storage macro: throw_snowball.ride_contents set value ''
#関数を実行
#function hide_and_seek:.util/throw_snowball/

#処理終了
#tag @e[type=snowball,tag=xxx,tag=not_yet,sort=nearest,limit=1] remove not_yet

#ride用
#execute as @e[tag=xxx_passenger,predicate=!hide_and_seek:is_riding_snowball] at @s run xxx
#---------------------------------------------------------


execute as @s at @s run function hide_and_seek:.util/throw_snowball/1 with storage macro: throw_snowball

