
function scenario:defuse_tnt/teleport
schedule function scenario:check_countdown 40t
tag @a[team=dab] remove in_tutorial
scoreboard players reset @a[team=dab] tutorial
##Goal text here
fill 25990 77 4 25990 77 6 air
tellraw @a[team=dab,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"在用完七次猜测之前确定正确的组合, 并注意时间, 否则判输.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]