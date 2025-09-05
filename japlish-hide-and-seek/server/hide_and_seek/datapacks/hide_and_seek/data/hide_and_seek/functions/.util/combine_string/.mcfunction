#マクロで実行用 function hide_and_seek:.util/combine_string/
#結合される文字列         $(string_1)
#結合する文字列   　　　　$(string_2)

#記述用---------------------------------------------------
# 2つの文字列を結合
#結合される文字列を指定
#data modify storage macro: combine_string.string_1 set from storage xxx
#結合する文字列を指定
#data modify storage macro: combine_string.string_2 set from storage xxx
#関数を実行
#function hide_and_seek:.util/combine_string/
#---------------------------------------------------------

function hide_and_seek:.util/combine_string/1 with storage macro: combine_string

# 実行後のアウトプット
#macro: combine_string.string_result
#-結合後の文字列
