#消費mpを記録
$scoreboard players set @s reserve_1 $(mp)

#消費mp - 自分のmp
scoreboard players operation @s reserve_1 -= @s MP

#結果が -1 以下なら発動成功
execute if score @s reserve_1 matches ..-1 run data modify storage macro: mp_judgment.result set value "succeed"
#結果が 0 以上なら発動失敗
execute if score @s reserve_1 matches 0.. run data modify storage macro: mp_judgment.result set value "fail"