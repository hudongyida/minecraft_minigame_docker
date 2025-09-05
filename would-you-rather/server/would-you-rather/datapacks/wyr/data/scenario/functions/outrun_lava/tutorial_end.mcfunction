
function scenario:outrun_lava/teleport
schedule function scenario:check_countdown 40t
schedule function scenario:outrun_lava/delayed_teleport 80t
tag @a[team=ol] remove in_tutorial
scoreboard players reset @a[team=ol] tutorial
##Goal text here
tellraw @a[team=ol,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"在被岩浆抓住之前到达山谷尽头的掩体中.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]