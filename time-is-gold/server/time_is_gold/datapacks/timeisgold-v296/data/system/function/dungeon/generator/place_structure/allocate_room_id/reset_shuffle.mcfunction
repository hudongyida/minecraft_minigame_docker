# 층 별 등장할 수 있는 방 ID 범위를 초기화하는 함수

data modify storage timeisgold:function_api stack append value {min:2, max:2}

execute if score #SYSTEM dungeon.floor matches 0 store result storage timeisgold:function_api stack[-1].min int 1 run scoreboard players get #FLOOR0 dungeon.generator.room_id.min
execute if score #SYSTEM dungeon.floor matches 0 store result storage timeisgold:function_api stack[-1].max int 1 run scoreboard players get #FLOOR0 dungeon.generator.room_id.max

execute if score #SYSTEM dungeon.floor matches 1 store result storage timeisgold:function_api stack[-1].min int 1 run scoreboard players get #FLOOR1 dungeon.generator.room_id.min
execute if score #SYSTEM dungeon.floor matches 1 store result storage timeisgold:function_api stack[-1].max int 1 run scoreboard players get #FLOOR1 dungeon.generator.room_id.max

execute if score #SYSTEM dungeon.floor matches 2 store result storage timeisgold:function_api stack[-1].min int 1 run scoreboard players get #FLOOR2 dungeon.generator.room_id.min
execute if score #SYSTEM dungeon.floor matches 2 store result storage timeisgold:function_api stack[-1].max int 1 run scoreboard players get #FLOOR2 dungeon.generator.room_id.max

function system:math/random/shuffle_range/init with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]