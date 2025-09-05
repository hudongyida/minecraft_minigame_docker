#ダメージ処理
function hide_and_seek:ability/seeker/attack_bullet/search/

#壁や床に当たったら消滅
execute as @e[type=item,tag=attack_bullet] run function hide_and_seek:ability/seeker/attack_bullet/throw/bounce
#パーティクルの表示
#execute as @e[type=item,tag=attack_bullet] at @s run particle crit 