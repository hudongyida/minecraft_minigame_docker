# 실행 인자: 로비 인벤토리를 확인할 플레이어
# 반환값이 False일 경우 인벤토리가 로비 아이템으로 구성되어 있지 않음

execute if score #SYSTEM system.gamemanager.game_session matches 1.. run return 1

execute unless items entity @s hotbar.0 *[custom_data~{item:lobby_join_as_player}] run return fail
execute unless items entity @s hotbar.1 *[custom_data~{item:lobby_spectate}] run return fail
execute unless items entity @s hotbar.2 *[custom_data~{item:lobby_teleport_to_spawn}] run return fail

return 1