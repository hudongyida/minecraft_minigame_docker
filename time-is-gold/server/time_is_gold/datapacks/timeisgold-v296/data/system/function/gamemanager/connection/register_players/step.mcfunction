# $(index)  - 레지스트리에 추가할 플레이어 id

data modify storage timeisgold:player_registry data append value {playeruuid:"", playername:"", playerid:0, playercheck:0}

# 플레이어 ID 저장
$data modify storage timeisgold:player_registry data[-1].playerid set value $(index)

# 플레이어 UUID Token 저장
$execute as @a[scores={playerid=$(index)},limit=1] run function system:utils/uuid_tokenizer/init
$execute if entity @a[scores={playerid=$(index)},limit=1] run data modify storage timeisgold:player_registry data[-1].playeruuid set from storage timeisgold:uuid_tokenizer output

# 플레이어 이름 저장
$execute as @a[scores={playerid=$(index)},limit=1] run function system:utils/player_name/init
$execute if entity @a[scores={playerid=$(index)},limit=1] run data modify storage timeisgold:player_registry data[-1].playername set from storage timeisgold:player_name output

$execute if entity @a[predicate=system:player,scores={playerid=$(index)},limit=1] run data modify storage timeisgold:player_registry data[-1].playercheck set value 1