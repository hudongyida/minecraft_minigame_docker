#生存中のhiderのみにダメージ処理
execute as @s[tag=hider,scores={HP=0..}] run function hide_and_seek:player/damage/
#進捗をリセット
advancement revoke @s only hide_and_seek:is_damaged
