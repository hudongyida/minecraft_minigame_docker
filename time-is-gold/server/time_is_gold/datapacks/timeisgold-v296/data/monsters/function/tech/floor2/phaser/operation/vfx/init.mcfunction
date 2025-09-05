# 실행 인자: monsters.floor2.phaser.marker.vfx 마커

data modify storage timeisgold:function_api stack append value {x:0,y:0,z:0}

data modify storage timeisgold:function_api stack[-1].x set from entity @s Pos[0]
data modify storage timeisgold:function_api stack[-1].y set from entity @s Pos[1]
data modify storage timeisgold:function_api stack[-1].z set from entity @s Pos[2]
execute positioned ~ ~ ~ run function monsters:tech/floor2/phaser/operation/vfx/vibration with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

particle dust{color:[0.0,0.5,0.5],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 4 force
kill @s