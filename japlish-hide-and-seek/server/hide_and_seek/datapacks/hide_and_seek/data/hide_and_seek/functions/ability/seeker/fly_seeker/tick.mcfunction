#雪玉にプレイヤーを乗せる
execute as @e[type=snowball,tag=fly_seeker_module] run function hide_and_seek:ability/seeker/fly_seeker/ride/
#rideから降りたitem_displayの処理
execute as @e[tag=fly_seeker_module_passenger,predicate=!hide_and_seek:is_riding_snowball] at @s run function hide_and_seek:ability/seeker/fly_seeker/kill/
