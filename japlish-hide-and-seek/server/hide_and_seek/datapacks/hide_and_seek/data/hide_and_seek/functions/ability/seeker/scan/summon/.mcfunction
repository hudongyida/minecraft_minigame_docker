#アニメーション用ディスプレイを召喚
function animated_java:scan_effect/summon

#playerのpair_UUIDにディスプレイUUIDを代入
execute store result score @s pair_UUID0_2 run data get entity @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] UUID[0]
execute store result score @s pair_UUID1_2 run data get entity @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] UUID[1]
execute store result score @s pair_UUID2_2 run data get entity @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] UUID[2]
execute store result score @s pair_UUID3_2 run data get entity @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] UUID[3]
#ディスプレイのpair_UUIDにplayerUUIDを代入
#execute store result score @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] pair_UUID0 run data get entity @s UUID[0]
#execute store result score @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] pair_UUID1 run data get entity @s UUID[1]
#execute store result score @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] pair_UUID2 run data get entity @s UUID[2]
#execute store result score @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] pair_UUID3 run data get entity @s UUID[3]

#回転を0に
execute as @e[type=#animated_java:root,tag=aj.scan_effect.root,tag=not_yet,sort=nearest,limit=1] run data modify entity @s Rotation set value [0f,0f]
