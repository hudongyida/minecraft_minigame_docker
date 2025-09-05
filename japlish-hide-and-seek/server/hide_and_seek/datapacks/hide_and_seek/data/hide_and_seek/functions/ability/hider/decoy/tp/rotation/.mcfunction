#Rotatiom[1]は固定
data modify entity @s Rotation[1] set value 0f

#Rotation_Lock時
#向きを調整
execute if entity @e[type=ocelot,tag=hider,tag=target,scores={disguise_block_rotation_lock=1}] run execute store result entity @s Rotation[0] float 1 run scoreboard players get @e[type=ocelot,tag=hider,tag=target,limit=1,sort=nearest] disguise_block_rotation_4