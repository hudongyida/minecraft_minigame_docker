bossbar set minecraft:play_gene_says/time visible false
scoreboard players set $time pgs_timer 20

execute as @a[tag=playing,team=pgs,gamemode=adventure] at @s run title @s subtitle {"text":" "}
execute if score $says pgs_timer matches 0 as @a[tag=playing,team=pgs,gamemode=adventure,tag=!pgs_completed_action] at @s run title @s title {"text":"干得好!","color":"green"}
execute if score $says pgs_timer matches 0 as @a[tag=playing,team=pgs,gamemode=adventure,tag=pgs_completed_action] at @s run title @s title {"text":"吉恩没说过!","color":"red"}
execute if score $says pgs_timer matches 0 run tag @a[tag=playing,team=pgs,gamemode=adventure,tag=pgs_completed_action] add pgs_failed

execute if score $says pgs_timer matches 1 run tag @a[tag=playing,team=pgs,gamemode=adventure,tag=!pgs_completed_action] add pgs_failed
execute if score $says pgs_timer matches 1 as @a[tag=playing,team=pgs,gamemode=adventure,tag=!pgs_completed_action] at @s run title @s title {"text":"你没有完成动作.","color":"red"}
execute if score $says pgs_timer matches 1 as @a[tag=playing,team=pgs,gamemode=adventure,tag=pgs_completed_action] at @s run title @s title {"text":"干得好!","color":"green"}


title @a[tag=playing,team=pgs] actionbar [{"text":" "}]

execute as @a[tag=playing,team=pgs,gamemode=adventure,tag=!pgs_failed] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1


execute as @a[tag=playing,team=pgs,gamemode=adventure,tag=pgs_failed] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing,team=pgs,gamemode=adventure,tag=pgs_failed] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.6
execute as @a[tag=playing,team=pgs,gamemode=adventure,tag=pgs_failed] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.7
bossbar set minecraft:play_gene_says/time value 160
tag @a[tag=playing,team=pgs] remove pgs_completed_action
clear @a[tag=playing,team=pgs,gamemode=adventure]
