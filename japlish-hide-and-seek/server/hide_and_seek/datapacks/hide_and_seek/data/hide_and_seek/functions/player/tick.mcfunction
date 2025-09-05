#酸素処理
execute as @a[nbt=!{Air:300s}] at @s run function hide_and_seek:player/status/air/
#HP回復処理
execute as @a if score @s HP matches 1..1999 run function hide_and_seek:player/status/hp/
#MP回復処理
execute as @a if score @s MP < #GameManager MP run function hide_and_seek:player/status/mp/
#HPが0のhiderのキル処理
execute as @a[tag=hider,scores={HP=0}] at @s run function hide_and_seek:player/kill/


#右クリック判定リセット
scoreboard players set @a right_click 0
