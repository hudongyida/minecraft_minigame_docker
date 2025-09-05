
function scenario:count_sheep/teleport
schedule function scenario:check_countdown 40t
tag @a[team=cs] remove in_tutorial
scoreboard players reset @a[team=cs] tutorial
##Goal text here
tellraw @a[team=cs,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"通过丢出床来数从头顶飞过的羊. 切记不要算上羊毛块.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]