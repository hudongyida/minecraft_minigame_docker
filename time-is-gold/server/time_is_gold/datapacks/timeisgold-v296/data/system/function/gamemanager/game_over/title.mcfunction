execute as @s if score @s system.gamemanager.player_death.titlecount matches 102 run title @s times 0 100 0

function system:gamemanager/game_over/form {titlecount:102,text:"TI"}
function system:gamemanager/game_over/form {titlecount:106,text:"TIME"}
function system:gamemanager/game_over/form {titlecount:110,text:"TIME CO"}
function system:gamemanager/game_over/form {titlecount:114,text:"TIME COLL"}
function system:gamemanager/game_over/form {titlecount:118,text:"TIME COLLAP"}
function system:gamemanager/game_over/form {titlecount:122,text:"TIME COLLAPSE"}
function system:gamemanager/game_over/form {titlecount:126,text:"时间崩塌"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 130 run title @s title {"text":"[ 时间崩塌 ]","color":"red","shadow_color":0}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 130 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1

execute as @s if score @s system.gamemanager.player_death.titlecount matches 150 run title @s title {"text":"[ 时间崩塌 ]","color":"red"}
execute as @s if score @s system.gamemanager.player_death.titlecount matches 150 at @s run playsound minecraft:entity.ender_dragon.death hostile @s ~ ~ ~ 0.2 1 1
execute as @s if score @s system.gamemanager.player_death.titlecount matches 150 run title @s times 10 70 20

execute as @s if score @s system.gamemanager.player_death.titlecount matches 150 run scoreboard players reset @s system.gamemanager.player_death.titlecount