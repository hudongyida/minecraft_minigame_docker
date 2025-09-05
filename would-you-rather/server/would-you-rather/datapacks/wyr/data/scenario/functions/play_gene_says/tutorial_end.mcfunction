
function scenario:play_gene_says/teleport
schedule function scenario:check_countdown 40t
tag @a[team=pgs] remove in_tutorial
scoreboard players reset @a[team=pgs] tutorial
##Goal text here
tellraw @a[team=pgs,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"按照吉恩的指令. 如果之前没有以下内容, 则不需要遵守: \"吉恩说.\"","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]