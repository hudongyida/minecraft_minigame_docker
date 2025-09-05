
function scenario:work_in_an_anvil_factory/teleport
schedule function scenario:check_countdown 40t
tag @a[team=wiaaf] remove in_tutorial
scoreboard players reset @a[team=wiaaf] tutorial
##Goal text here
tellraw @a[team=wiaaf,tag=!in_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"躲避掉下来的铁砧, 直到倒计时结束.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]