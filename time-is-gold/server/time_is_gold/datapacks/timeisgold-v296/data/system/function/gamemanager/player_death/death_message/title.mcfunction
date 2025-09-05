execute as @s if score @s system.gamemanager.player_death.titlecount matches 2 run title @s times 0 100 0
# TODO: 1.21.4가 되면 그림자 빼기 + 된다면 리소스팩으로 폰트 변경
execute as @s if score @s system.gamemanager.player_death.titlecount matches 2 run title @s title {"text":"T","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 2 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 4 run title @s title {"text":"TI","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 4 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 6 run title @s title {"text":"TIM","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 6 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 8 run title @s title {"text":"TIME","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 8 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 10 run title @s title {"text":"TIME O","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 10 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 12 run title @s title {"text":"TIME OV","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 12 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 14 run title @s title {"text":"TIME OVE","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 14 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 16 run title @s title {"text":"时间耗尽","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 16 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 18 run title @s title {"text":"[ 时间耗尽 ]","color":"green"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 18 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 20 run title @s title {"text":"[ 时间耗尽 ]","color":"red"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 20 run title @s times 10 70 20
execute as @s if score @s system.gamemanager.player_death.titlecount matches 20 run scoreboard players reset @s system.gamemanager.player_death.titlecount