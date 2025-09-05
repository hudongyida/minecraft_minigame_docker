# 최초로 접속한 플레이어 처리
execute as @a unless score @s admin.do_not_remove.join_history matches 1.. run function system:lobby/player/first_joined

# 게임이 시작되지 않은 상태에서만 실행
execute if score #SYSTEM system.gamemanager.game_session matches 1.. run return fail

# Tab 리스트에서 시간 표시 삭제
scoreboard objectives modify system.time.display_integer numberformat blank

# 이름 밑 시간 표시 삭제
scoreboard objectives setdisplay below_name

# 로비 기능 쿨다운
execute as @a if score @s system.lobby.item.cooldown matches 1.. run scoreboard players remove @s system.lobby.item.cooldown 1

# 소셜 기능
function system:lobby/social/tick

# 텍스트 디스플레이 정렬
function system:lobby/text_display/tick

# 로비 기믹 실행
function system:lobby/gimmick/tick

# 로비 포탈 실행
execute as @e[type=marker,tag=system.lobby.portal.marker] run function system:lobby/start_portal/step

# 권장 플레이어 수 표시
execute as @e[type=text_display,tag=system.lobby.team_size_notify.text_display] run function system:lobby/team_size_notify/step

# PVP 금지
effect give @a[team=ready,gamemode=adventure] weakness infinite 100 true
effect give @a[team=spectators,gamemode=adventure] weakness infinite 100 true
effect clear @a[team=!ready,team=!spectators] weakness

execute as @a[team=ready] unless function system:lobby/inventory/item_check run function system:lobby/inventory/reset
execute as @a[team=spectators] unless function system:lobby/inventory/item_check run function system:lobby/inventory/reset
execute as @e[type=item] run function system:lobby/inventory/drop_check