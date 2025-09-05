#Rotatiom[1]は固定
data modify entity @s Rotation[1] set value 0f

#Rotation_Lock時

#Rotation_UnLock時
execute if entity @a[tag=target,scores={disguise_block_rotation_lock=0}] run execute store result score @a[tag=target,limit=1,sort=nearest] disguise_block_rotation_4 run data get entity @a[tag=target,limit=1,sort=nearest] Rotation[0]
execute if entity @a[tag=target,scores={disguise_block_rotation_lock=0}] run scoreboard players operation @a[tag=target,limit=1,sort=nearest] disguise_block_rotation_4 -= @a[tag=target,limit=1,sort=nearest] disguise_block_rotation_3

#共通
execute store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=target,limit=1,sort=nearest] disguise_block_rotation_4