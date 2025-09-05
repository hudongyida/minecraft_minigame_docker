# 실행 인자: @e[type=text_display,tag=system.lobby.team_size_notify.text_display]

scoreboard players reset #SYSTEM system.lobby.team_size_notify.count
execute as @a[team=ready] run scoreboard players add #SYSTEM system.lobby.team_size_notify.count 1

execute unless score @s system.lobby.team_size_notify.toggled matches 1 unless score #SYSTEM system.lobby.team_size_notify.count matches 3..5 at @s run function system:lobby/team_size_notify/display_text
execute if score @s system.lobby.team_size_notify.toggled matches 1 if score #SYSTEM system.lobby.team_size_notify.count matches 3..5 at @s run function system:lobby/team_size_notify/remove_text