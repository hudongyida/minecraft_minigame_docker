#Rotationを右に
scoreboard players add @s disguise_block_rotation_3 1
scoreboard players remove @s disguise_block_rotation_4 1

#Rotationの値を正常化
scoreboard players set @s reserve_1 360
execute if score @s disguise_block_rotation_4 matches 361.. run scoreboard players operation @s disguise_block_rotation_4 -= @s reserve_1
execute if score @s disguise_block_rotation_4 matches ..-1 run scoreboard players operation @s disguise_block_rotation_4 += @s reserve_1
scoreboard players reset @s reserve_1