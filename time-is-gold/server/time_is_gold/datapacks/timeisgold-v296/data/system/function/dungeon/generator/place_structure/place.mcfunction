# 구조물을 배치하는 함수.
# $(structure)  - 구조물 파일의 경로(네임스페이스 포함)
# $(y_offset)   - 구조물을 배치할 높이

execute at @s positioned ~-5 ~ ~-5 run kill @e[type=item,dx=37,dy=-256,dz=37]

$execute at @s positioned ~ ~$(y_offset) ~ run setblock ~ ~ ~ structure_block{mode:"LOAD",ignoreEntities:false,integrity:1f,name:"$(structure)",author:"timeisgold",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",showboundingbox:true,showair:false,seed:0L}
$execute if score @s dungeon.generator.rotation_value matches 1 positioned ~ ~$(y_offset) ~ run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
$execute if score @s dungeon.generator.rotation_value matches 2 positioned ~ ~$(y_offset) ~ run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
$execute if score @s dungeon.generator.rotation_value matches 3 positioned ~ ~$(y_offset) ~ run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"
$execute if score @s dungeon.generator.rotation_value matches 1..2 positioned ~ ~$(y_offset) ~ run data modify block ~ ~ ~ posX set value 26
$execute if score @s dungeon.generator.rotation_value matches 2..3 positioned ~ ~$(y_offset) ~ run data modify block ~ ~ ~ posZ set value 26

$execute at @s positioned ~ ~$(y_offset) ~ run setblock ~ ~1 ~ redstone_block
execute at @s positioned ~13 ~ ~13 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:[dungeon.room.center],Marker:true,Invulnerable:true,NoGravity:true}
execute at @s positioned ~13 ~ ~13 align xyz positioned ~0.5 ~ ~0.5 run scoreboard players operation @n[type=armor_stand,tag=dungeon.room.center,distance=..0.5] dungeon.structure_id = @s dungeon.structure_id