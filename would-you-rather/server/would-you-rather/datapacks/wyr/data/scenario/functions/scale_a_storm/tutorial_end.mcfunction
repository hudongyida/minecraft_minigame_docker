
function scenario:scale_a_storm/teleport
schedule function scenario:check_countdown 40t
tag @a[team=sas] remove in_tutorial
scoreboard players reset @a[team=sas] tutorial
##Goal text here
tellraw @a[team=sas,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"使用三叉戟穿过云层正下方的方格圆圈中.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]