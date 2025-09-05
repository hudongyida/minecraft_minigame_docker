
function scenario:grade_a_math_test/teleport
schedule function scenario:check_countdown 40t
tag @a[team=gamt] remove in_tutorial
scoreboard players reset @a[team=gamt] tutorial
tellraw @a[team=gamt,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"用 \"正确\" 或 \"错误\" 回答正确十道数学题.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]