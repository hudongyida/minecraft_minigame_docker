
function scenario:drink_potions/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ddp] remove in_tutorial
kill @e[type=armor_stand,tag=ddp_tutorial]
scoreboard players reset @a[team=ddp] tutorial
##Goal text here
tellraw @a[team=ddp,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"喝下一瓶药水, 希望它不是有毒那瓶.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]