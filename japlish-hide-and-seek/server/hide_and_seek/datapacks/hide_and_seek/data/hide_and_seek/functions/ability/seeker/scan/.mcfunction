# MP判定
#消費mpを設定
execute store result storage macro: mp_judgment.mp int 1 run data get storage settings: ability.scan.mp
#関数を実行
function hide_and_seek:.util/mp_judgment/
#MP不足
execute if data storage macro: mp_judgment{result:fail} run return run playsound minecraft:error master @s ~ ~ ~

#MPゲージ用処理
scoreboard players operation @s MP_old = @s MP
scoreboard players set @s use_ability 0

# MPを消費
execute store result score @s reserve_1 run data get storage macro: mp_judgment.mp
scoreboard players operation @s MP -= @s reserve_1


#アニメーション用ディスプレイを召喚
function hide_and_seek:ability/seeker/scan/summon/
#アニメーションを再生
execute as @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] run function animated_java:scan_effect/animations/scanning/play
#演出
#playsound minecraft:entity.player.breath master @a ~ ~ ~ 1.0 1 0.0
playsound minecraft:scan master @a ~ ~ ~