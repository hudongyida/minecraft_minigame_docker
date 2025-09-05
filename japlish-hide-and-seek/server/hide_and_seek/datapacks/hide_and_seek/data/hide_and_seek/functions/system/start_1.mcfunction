#制限時間を設定(後に拡張?)
scoreboard players set #GameManager game_timer 12000

#ボスバーを設定
bossbar add game_timer "制限時間"
bossbar set game_timer players @a
execute store result bossbar game_timer max run scoreboard players get #GameManager game_timer

#開始ポイントを設定
summon marker ~ ~ ~ {Tags:["start"]}
summon marker ~ ~ ~ {Tags:["worldborder_new","worldborder"]}

#ワールドボーダー
worldborder center ~ ~
worldborder set 128
worldborder damage buffer 0

#中心をリスポーン位置に
setworldspawn ~ ~ ~

#チーム分け
function hide_and_seek:team/teaming/ with storage settings: camp.seeker

#scoreboardをリセット
#右クリック判定リセット
scoreboard players set @a right_click 0
#死亡カウントリセット
scoreboard players set @a death 0 

#seekerにエフェクト付与
#effect give @a[team=seeker] minecraft:blindness 30 0 true
#seekerにtagを付与
tag @a[team=seeker] add initial

#seekerをとらえる檻を設置
execute at @e[type=marker,tag=start] run function animated_java:jail_cell/summon

#全員をスタート位置に
execute at @e[type=marker,tag=start] run tp @a ~ ~ ~
#全員をアドベンチャーに
gamemode adventure @a

#ゲーム開始のアナウンス
title @a[team=seeker] title [{"text":"\uE006","font":"system"}]
title @a[team=hider] title [{"text":"\uE007","font":"system"}]

#ゲームループ開始
function hide_and_seek:system/main