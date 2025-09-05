advancement revoke @s only system:lobby/teleport_to_spawn_right_click

execute if score #SYSTEM system.gamemanager.game_session matches 1.. run return fail
execute if score @s system.lobby.item.cooldown matches 1.. run return fail

scoreboard players operation @s system.lobby.item.cooldown = #SYSTEM system.lobby.item.cooldown
function system:lobby/player/reset

# SFX
execute at @s run playsound entity.enderman.teleport hostile @s ~ ~ ~ 0.5 1