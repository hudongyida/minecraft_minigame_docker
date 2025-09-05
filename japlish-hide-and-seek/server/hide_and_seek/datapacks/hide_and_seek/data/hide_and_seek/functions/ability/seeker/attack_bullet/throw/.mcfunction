#アイテムを飛ばす
execute anchored eyes run summon item ^ ^0.25 ^ {Item:{id:"minecraft:netherite_block",Count:1b,tag:{CustomModelData:0}},Health:1s,PickupDelay:10000,Tags:["attack_bullet","not_yet"],NoGravity:false,Age:0}
data modify entity @e[type=item,tag=attack_bullet,tag=not_yet,sort=nearest,limit=1] Thrower set from entity @s UUID
damage @e[type=item,limit=1,sort=nearest,tag=attack_bullet,tag=not_yet] 0.0
execute rotated as @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.5 {Tags:["attack_bullet_motion"]}
execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=attack_bullet_motion,limit=1] Pos
kill @e[type=area_effect_cloud,tag=attack_bullet_motion,limit=1]


#壁や床に当たった時に消滅するための例外処理
execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] store result storage item: motion double 0.001 run data get entity @s Motion[0] 1000
execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] unless data storage item: {motion:0d} run tag @s add motion_x

execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] store result storage item: motion double 0.001 run data get entity @s Motion[1] 1000
execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] unless data storage item: {motion:0d} run tag @s add motion_y

execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] store result storage item: motion double 0.001 run data get entity @s Motion[2] 1000
execute as @e[type=item,tag=attack_bullet,tag=not_yet,limit=1,sort=nearest] unless data storage item: {motion:0d} run tag @s add motion_z


#処理終了
tag @e[type=item,tag=attack_bullet,tag=not_yet,sort=nearest,limit=1] remove not_yet

#演出等
#playsound minecraft:entity.egg.throw master @a
