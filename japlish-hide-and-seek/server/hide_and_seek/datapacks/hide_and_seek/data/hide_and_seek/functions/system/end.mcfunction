#結果出力
function hide_and_seek:system/result

#全員をスタート地点へtp
execute at @e[type=marker,tag=start] run tp @a ~ ~ ~

worldborder set 100000
bossbar remove game_timer
#scoreboard objectives remove game_timer
scoreboard players set #GameManager game_timer -1
kill @e[type=marker,tag=worldborder]
kill @e[type=marker,tag=start]
kill @e[type=marker,tag=zone]
tag @a remove initial
schedule clear hide_and_seek:.util/move_worldborder/.closing
schedule clear hide_and_seek:.util/move_worldborder/.tick_2
execute as @e[type=#animated_java:root,tag=aj.jail_cell.root] run function animated_java:jail_cell/remove/this

execute as @a at @s run playsound minecraft:entity.player.levelup master @s

effect clear @a

#チームから抜ける
execute as @a run function hide_and_seek:team/.non_team