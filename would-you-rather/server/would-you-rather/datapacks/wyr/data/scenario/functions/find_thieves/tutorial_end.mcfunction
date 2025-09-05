
function scenario:find_thieves/teleport
schedule function scenario:check_countdown 40t
tag @a[team=ft] remove in_tutorial
tp @e[type=skeleton,tag=ft_die] 0 0 0
kill @e[type=skeleton,tag=ft_die]
scoreboard players reset @a[team=ft] tutorial
##Goal text here
tellraw @a[team=ft,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"将人群中的小偷与你背包中的玩家头像相匹配, 抓到三个小偷赢得该场景.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]