#マクロで実行用 function hide_and_seek:.util/mp_judgment/
#消費mp         $(mp) 10 20

#記述用---------------------------------------------------
# MP判定
#消費mpを設定
#execute store result storage macro: mp_judgment.mp int 1 run data get storage settings: ability.xxx.mp
#関数を実行
#function hide_and_seek:.util/mp_judgment/
#---------------------------------------------------------

function hide_and_seek:.util/mp_judgment/1 with storage macro: mp_judgment

#念のためおかたづけ
#scoreboard players reset @s reserve_1

# 実行後のアウトプット
#macro: mp_judgment.result
#-成功 "succeed"  失敗 "fail"
#macro: mp_judgment.mp
#-消費MP