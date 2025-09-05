# 自身の回転モードを代入
execute as @e[tag=summoning,scores={disguise_block_rotation_lock=0}] run scoreboard players set @e[tag=decoy_operator,tag=not_yet,sort=nearest,limit=1] disguise_block_rotation_lock 0
execute as @e[tag=summoning,scores={disguise_block_rotation_lock=1}] run scoreboard players set @e[tag=decoy_operator,tag=not_yet,sort=nearest,limit=1] disguise_block_rotation_lock 1

# ブロックの回転を保存
execute store result score @e[type=ocelot,tag=decoy,tag=decoy_operator,tag=not_yet] disguise_block_rotation_4 run scoreboard players get @e[tag=summoning,limit=1,sort=nearest] disguise_block_rotation_4