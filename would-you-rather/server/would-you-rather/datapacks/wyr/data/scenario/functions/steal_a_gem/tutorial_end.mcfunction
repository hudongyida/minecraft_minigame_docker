
function scenario:steal_a_gem/teleport
schedule function scenario:check_countdown 40t
tag @a[team=rab] remove in_tutorial
scoreboard players reset @a[team=rab] tutorial
bossbar set steal_a_gem:suspicion visible true
##Goal text here
tellraw @a[team=rab,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"抢劫, 去金库, 拿走宝石, 然后上你的卡车走人.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]