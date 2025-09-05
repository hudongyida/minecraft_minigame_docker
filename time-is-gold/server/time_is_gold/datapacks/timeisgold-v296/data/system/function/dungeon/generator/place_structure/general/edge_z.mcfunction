# 실행 인자: bfs.edge, bfs.edge.z

execute as @s[tag=bfs.edge.removed] at @s positioned ~ ~-51 ~ run setblock ~ ~ ~ structure_block{mode:"LOAD",ignoreEntities:false,integrity:1f,name:"system:general/passage_blocked_z",author:"timeisgold",posX:10,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",showboundingbox:true,showair:false,seed:0L}

# 층별 통로 구조물 배치
execute if score #SYSTEM dungeon.floor matches 0 as @s[tag=!bfs.edge.removed] at @s positioned ~ ~-51 ~ run setblock ~ ~ ~ structure_block{mode:"LOAD",ignoreEntities:false,integrity:1f,name:"system:floor0/passage_z",author:"timeisgold",posX:10,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",showboundingbox:true,showair:false,seed:0L}
execute if score #SYSTEM dungeon.floor matches 1 as @s[tag=!bfs.edge.removed] at @s positioned ~ ~-51 ~ run setblock ~ ~ ~ structure_block{mode:"LOAD",ignoreEntities:false,integrity:1f,name:"system:floor1/passage_z",author:"timeisgold",posX:10,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",showboundingbox:true,showair:false,seed:0L}
execute if score #SYSTEM dungeon.floor matches 2 as @s[tag=!bfs.edge.removed] at @s positioned ~ ~-51 ~ run setblock ~ ~ ~ structure_block{mode:"LOAD",ignoreEntities:false,integrity:1f,name:"system:floor2/passage_z",author:"timeisgold",posX:10,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",showboundingbox:true,showair:false,seed:0L}
#execute if score #SYSTEM dungeon.floor matches 3 as @s[tag=!bfs.edge.removed] at @s positioned ~ ~-51 ~ run say floor 3 passage z is not ready
#execute if score #SYSTEM dungeon.floor matches 4 as @s[tag=!bfs.edge.removed] at @s positioned ~ ~-51 ~ run say floor 4 passage z is not ready

execute as @s at @s positioned ~ ~-50 ~ run setblock ~ ~ ~ redstone_block
execute as @s at @s positioned ~ ~-51 ~ run fill ~ ~ ~ ~ ~1 ~ air