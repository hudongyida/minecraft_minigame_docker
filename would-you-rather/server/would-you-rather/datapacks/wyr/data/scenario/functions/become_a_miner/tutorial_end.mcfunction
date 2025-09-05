
function scenario:become_a_miner/teleport
schedule function scenario:check_countdown 40t
tag @a[team=bam] remove in_tutorial
scoreboard players reset @a[team=bam] tutorial
tellraw @a[team=bam,tag=!in_tutorial] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"使用幸运镐获得七颗钻石.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]