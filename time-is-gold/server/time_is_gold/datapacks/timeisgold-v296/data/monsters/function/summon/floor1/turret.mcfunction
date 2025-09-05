execute as @s at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:["turret","turret_center","turret_unidentify"],"Invisible":1b,"NoGravity":1b}
execute as @e[type=armor_stand,tag=turret_unidentify,sort=nearest,limit=1] at @s run summon marker ~ ~ ~ {Tags:["turret_id"],data:{uuid0:0}}
execute as @e[type=armor_stand,tag=turret_unidentify,sort=nearest,limit=1] at @s run data modify entity @e[type=marker,tag=turret_id,sort=nearest,limit=1] data.uuid0 set from entity @s UUID[0]
execute as @e[type=armor_stand,tag=turret_unidentify,sort=nearest,limit=1] at @s run function monsters:tech/floor1/turret/center_tag with entity @e[tag=turret_id,sort=nearest,limit=1] data

kill @e[type=marker,tag=turret_id]
execute as @e[type=armor_stand,tag=turret_unidentify,sort=nearest,limit=1] at @s run tag @s remove turret_unidentify