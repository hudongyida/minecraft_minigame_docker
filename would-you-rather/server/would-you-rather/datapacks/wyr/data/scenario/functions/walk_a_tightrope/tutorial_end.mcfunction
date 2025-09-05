
function scenario:walk_a_tightrope/teleport
schedule function scenario:check_countdown 40t
tag @a[team=wat] remove in_tutorial
scoreboard players reset @a[team=wat] tutorial
##Goal text here
tellraw @a[team=wat,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"到达跑酷终点.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]