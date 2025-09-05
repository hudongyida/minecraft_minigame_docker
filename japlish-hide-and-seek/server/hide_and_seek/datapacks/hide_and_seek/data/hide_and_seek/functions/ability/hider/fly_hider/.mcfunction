# MP判定
#消費mpを設定
execute store result storage macro: mp_judgment.mp int 1 run data get storage settings: ability.fly_hider.mp
#関数を実行
function hide_and_seek:.util/mp_judgment/
#MP不足
execute if data storage macro: mp_judgment{result:fail} run return run playsound minecraft:error master @s ~ ~ ~


#エラーメッセージ
execute as @s[predicate=hide_and_seek:is_riding_snowball] run return run playsound minecraft:error master @s ~ ~ ~

#MPゲージ用処理
scoreboard players operation @s MP_old = @s MP
scoreboard players set @s use_ability 0

# MPを消費
execute store result score @s reserve_1 run data get storage macro: mp_judgment.mp
scoreboard players operation @s MP -= @s reserve_1

#拟态を解除
execute as @s at @s run function hide_and_seek:ability/hider/disguise/change_appearance/release
#アイテムを投げる
execute as @s[predicate=!hide_and_seek:is_riding_snowball] run function hide_and_seek:ability/hider/fly_hider/throw/

