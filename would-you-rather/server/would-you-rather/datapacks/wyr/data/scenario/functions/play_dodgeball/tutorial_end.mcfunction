function scenario:play_dodgeball/teleport
schedule function scenario:check_countdown 40t
tag @a[team=pd] remove in_tutorial
scoreboard players reset @a[team=pd] tutorial
##Goal text here
tellraw @a[team=pd,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"躲避潜影贝的子弹直到时间用完.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]