execute as @s if score @s item.timebreaker.empowered matches 1.. run scoreboard players remove @s item.timebreaker.empowered 1
execute as @s if score @s item.timebreaker.empowered matches 0 at @s run playsound minecraft:block.respawn_anchor.deplete block @s ~ ~ ~ 1 2 0
execute as @s if score @s item.timebreaker.empowered matches 0 run scoreboard players reset @s item.timebreaker.empowered