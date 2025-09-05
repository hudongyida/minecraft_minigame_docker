#タイマーを進行
scoreboard players remove #GameManager game_timer 1
execute store result bossbar game_timer value run scoreboard players get #GameManager game_timer

#最初の30秒はseekerを初期位置に
execute if score #GameManager game_timer matches 11400.. as @a[team=seeker] run function hide_and_seek:system/stanby_seeker
#檻開錠アニメーション
execute if score #GameManager game_timer matches 11400 as @e[type=#animated_java:root,tag=aj.jail_cell.root] run function animated_java:jail_cell/animations/open/play
#解放を全員に通知
execute if score #GameManager game_timer matches 11400 run title @a title [{"text":"\uE005","font":"system"}]

#アビリティをセット
execute as @a run function hide_and_seek:ability/set_ability

#エリア縮小
# 予告1分後、収縮1分後、収縮時間1分
execute if score #GameManager game_timer matches 10800 at @e[type=marker,tag=worldborder_new,limit=1] run function hide_and_seek:worldborder/1
# 予告3分後、収縮1分後、収縮時間1分
execute if score #GameManager game_timer matches 8400 at @e[type=marker,tag=worldborder_new,limit=1] run function hide_and_seek:worldborder/2
# 予告5分後、収縮1分後、収縮時間1分
execute if score #GameManager game_timer matches 6000 at @e[type=marker,tag=worldborder_new,limit=1] run function hide_and_seek:worldborder/3
# 予告7分後、収縮1分後、収縮時間1分
execute if score #GameManager game_timer matches 3600 at @e[type=marker,tag=worldborder_new,limit=1] run function hide_and_seek:worldborder/4

#死亡時の処理
execute as @a[scores={death=1..}] run function hide_and_seek:system/death

#制限時間満了でゲーム終了
execute if score #GameManager game_timer matches 0 run title @a title [{"text":"\uE002","font":"system"}]
execute if score #GameManager game_timer matches 0 run function hide_and_seek:system/end

#hiderがいなくなったらゲームを強制終了
execute if score #GameManager game_timer matches 1.. unless entity @a[team=hider] run title @a title [{"text":"\uE001","font":"system"}]
execute if score #GameManager game_timer matches 1.. unless entity @a[team=hider] run function hide_and_seek:system/end


#再帰処理
execute if score #GameManager game_timer matches 1.. run schedule function hide_and_seek:system/main 1t