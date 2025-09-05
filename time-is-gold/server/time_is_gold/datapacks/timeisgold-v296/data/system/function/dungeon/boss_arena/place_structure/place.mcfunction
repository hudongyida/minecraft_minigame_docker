# 구조물을 배치하는 함수
# $(structure)  - 구조물 파일의 경로(네임스페이스 포함)
# $(x_offset)   - 구조물을 배치할 X축 오프셋
# $(z_offset)   - 구조물을 배치할 Z축 오프셋
# $(y_offset)   - 구조물을 배치할 높이

$execute at @s positioned ~ ~$(y_offset) ~ run setblock ~ ~ ~ structure_block{mode:"LOAD",ignoreEntities:false,integrity:1f,name:"$(structure)",author:"timeisgold",posX:$(x_offset),posY:0,posZ:$(z_offset),rotation:"NONE",mirror:"NONE",showboundingbox:true,showair:false,seed:0L}
$execute at @s positioned ~ ~$(y_offset) ~ run setblock ~ ~1 ~ redstone_block
$execute at @s positioned ~ ~$(y_offset) ~ run fill ~ ~ ~ ~ ~1 ~ air