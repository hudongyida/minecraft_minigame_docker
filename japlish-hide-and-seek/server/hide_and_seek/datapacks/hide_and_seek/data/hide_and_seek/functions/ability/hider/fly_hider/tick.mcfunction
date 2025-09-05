#雪玉にプレイヤーを乗せる
execute as @e[type=snowball,tag=fly_hider_module] run function hide_and_seek:ability/hider/fly_hider/ride/
#rideから降りたitem_displayの処理
execute as @e[tag=fly_hider_module_passenger,predicate=!hide_and_seek:is_riding_snowball] at @s run function hide_and_seek:ability/hider/fly_hider/kill/
