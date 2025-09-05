
function scenario:avoid_radioactive_bats/teleport
schedule function scenario:check_countdown 40t
tag @a[team=arb] remove in_tutorial
scoreboard players reset @a[team=arb] tutorial

##Goal text here


kill @e[type=bat,tag=arb_bat]

scoreboard players set $mod random 30
function random:random
execute if score $rand random matches 0 run clone 14991 16 -9 15009 16 9 14991 60 -9
execute if score $rand random matches 1..9 run clone 14991 7 -9 15009 7 9 14991 60 -9
execute if score $rand random matches 10..19 run clone 14991 10 -9 15009 10 9 14991 60 -9
execute if score $rand random matches 20..29 run clone 14991 13 -9 15009 13 9 14991 60 -9

tellraw @a[team=arb,tag=!no_tutorial,gamemode=adventure] [{"text":"-----------------------------------------------------","color":"dark_gray"},{"text":"\n你的目标: ","color":"gray","bold":true},{"text":"尽可能存活于平台上, 直到时间耗尽.","bold":false,"color":"green"},{"text":"\n-----------------------------------------------------","color":"dark_gray"}]