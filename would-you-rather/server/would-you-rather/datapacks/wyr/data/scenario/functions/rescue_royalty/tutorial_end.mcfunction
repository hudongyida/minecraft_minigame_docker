
function scenario:rescue_royalty/teleport
schedule function scenario:check_countdown 40t
tag @a[team=rap] remove in_tutorial
scoreboard players reset @a[team=rap] tutorial
##Goal text here
tellraw @a[team=rap,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"杀死一名骑士以获得他们的钥匙, 然后保护塔顶.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]