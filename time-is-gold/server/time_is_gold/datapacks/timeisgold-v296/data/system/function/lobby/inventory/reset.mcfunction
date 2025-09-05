# 로비에 있는 플레이어의 인벤토리를 초기화하는 함수.

clear @s *
item replace entity @s hotbar.0 with lime_concrete[custom_name={"translate": "system.lobby.inventory.item.join_as_player.name", "fallback": "Join as Player", "color": "green"},custom_data={item:lobby_join_as_player},consumable={consume_seconds:2147483647}] 1
item replace entity @s hotbar.1 with red_concrete[custom_name={"translate": "system.lobby.inventory.item.spectate.name", "fallback": "Spectate", "color": "red"},custom_data={item:lobby_spectate},consumable={consume_seconds:2147483647}] 1
item replace entity @s hotbar.2 with blue_concrete[custom_name={"translate": "system.lobby.inventory.item.teleport_to_spawn.name", "fallback": "Teleport to Spawn", "color": "blue"},custom_data={item:lobby_teleport_to_spawn},consumable={consume_seconds:2147483647}] 1