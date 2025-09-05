
function scenario:play_the_piano/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ptp] remove in_tutorial
scoreboard players reset @a[team=ptp] tutorial
##Goal text here
tellraw @a[team=ptp,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"重复钢琴上弹奏的音符.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]