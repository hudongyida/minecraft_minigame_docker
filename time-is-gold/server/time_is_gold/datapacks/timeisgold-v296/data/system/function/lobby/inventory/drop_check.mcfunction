# 실행 인자: 로비에 떨어진 아이템

execute if items entity @s contents *[custom_data~{item:lobby_join_as_player}] run kill @s
execute if items entity @s contents *[custom_data~{item:lobby_spectate}] run kill @s
execute if items entity @s contents *[custom_data~{item:lobby_teleport_to_spawn}] run kill @s