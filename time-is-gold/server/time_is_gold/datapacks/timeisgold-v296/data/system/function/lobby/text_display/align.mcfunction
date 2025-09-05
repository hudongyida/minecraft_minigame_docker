scoreboard players set #SYSTEM system.lobby.text_display.tick 20

execute unless score #SYSTEM system.lobby.text_display.toggled matches 1 as @e[type=text_display,tag=system.lobby.text_display.image] run data modify entity @s background set value 1
execute unless score #SYSTEM system.lobby.text_display.toggled matches 1 as @e[type=text_display,tag=system.lobby.text_display.translate] run data modify entity @s background set value 1
execute unless score #SYSTEM system.lobby.text_display.toggled matches 1 run scoreboard players set #SYSTEM system.lobby.text_display.toggled 1

execute if score #SYSTEM system.lobby.text_display.toggled matches 1 as @e[type=text_display,tag=system.lobby.text_display.image] run data modify entity @s background set value 0
execute if score #SYSTEM system.lobby.text_display.toggled matches 1 as @e[type=text_display,tag=system.lobby.text_display.translate] run data modify entity @s background set value 0
execute if score #SYSTEM system.lobby.text_display.toggled matches 1 run scoreboard players set #SYSTEM system.lobby.text_display.toggled 0