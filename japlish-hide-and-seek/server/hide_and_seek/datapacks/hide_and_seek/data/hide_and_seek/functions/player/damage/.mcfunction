#ui関係
scoreboard players operation @s HP_old = @s HP
scoreboard players set @s damaged 0

#ダメージ処理
scoreboard players operation @s HP -= #GameManager hp_range
execute as @a if score @s HP < #GameManager hp_range run scoreboard players set @s HP 0

#演出
damage @s 0.001 fall
particle crit ~ ~0.5 ~ 0 0 0 1 100 force @a
execute as @s unless score @s HP matches ..0 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.0 1 0.0
