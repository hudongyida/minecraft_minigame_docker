
function scenario:cook_mushroom_soups/teleport
schedule function scenario:check_countdown 40t
tag @a[team=cms] remove in_tutorial
scoreboard players reset @a[team=cms] tutorial
##Goal text here
tellraw @a[team=cms,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"将三份蘑菇汤送到顾客手中.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]