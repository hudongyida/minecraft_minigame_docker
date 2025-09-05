
function scenario:explore_a_deserted_lab/teleport
schedule function scenario:check_countdown 40t
tag @a[team=eadl] remove in_tutorial
scoreboard players reset @a[team=eadl] tutorial
##Goal text here
tellraw @a[team=eadl,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"在实验室内找到并取回三个组件, 然后返回你的飞船.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]