execute at @s run particle portal ~ ~ ~ 0.15 0.15 0.15 0.3 5 force
execute at @s run particle dust{color:[1.0,0.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute at @s run playsound minecraft:entity.player.teleport player @a ~ ~ ~ 1 1.8 0
data modify entity @s PickupDelay set value 0
tp @s ~ ~ ~
scoreboard players add @p[gamemode=!spectator,distance=..1] item.command_console.collection 1