advancement revoke @s only system:lobby/join_as_player_right_click

execute if score #SYSTEM system.gamemanager.game_session matches 1.. run return fail
execute if score @s system.lobby.item.cooldown matches 1.. run return fail

scoreboard players operation @s system.lobby.item.cooldown = #SYSTEM system.lobby.item.cooldown
team join ready @s

# SFX
execute at @s run playsound block.dispenser.dispense block @s ~ ~ ~ 1 2

# HUD
title @s actionbar {"translate": "system.lobby.notify.join_as_player"}