#弾の周辺にいる相手をサーチ
execute at @e[type=item,tag=attack_bullet] as @e[tag=hider] positioned ~-1.75 ~-1.75 ~-1.75 if entity @s[dx=1,dy=1,dz=1] positioned ~2.5 ~2.5 ~2.5 if entity @s[dx=-1,dy=-1,dz=-1] run tag @s add hit_attack_bullet
#サーチ範囲内に相手がいれば自身をキル
execute as @e[tag=hit_attack_bullet] at @s as @e[type=item,tag=attack_bullet,sort=nearest,limit=1] run kill @s


#プレイヤーには極小ダメージ
execute as @a[tag=hit_attack_bullet] at @s run damage @s 0.001
#その他エンティティにはそのままダメージ処理
execute as @e[type=!player,tag=hit_attack_bullet,nbt={HurtTime:0s}] at @s run function hide_and_seek:player/damage/


#おかたづけ
execute as @e[tag=hit_attack_bullet] run tag @s remove hit_attack_bullet