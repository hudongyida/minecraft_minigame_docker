bossbar set survive_in_the_wilderness:campfire players
function scenario:survive_in_the_wilderness/teleport
schedule function scenario:check_countdown 40t
tag @a[team=sitw] remove in_tutorial
scoreboard players reset @a[team=sitw] tutorial
tellraw @a[team=sitw,tag=!no_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"将你的状态 (温暖, 饥饿和口渴) 保持在零以上, 直到时间用完.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]