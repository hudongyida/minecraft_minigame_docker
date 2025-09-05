function scenario:fail_scenario
tellraw @s [{"text":"<裁判>","color":"light_purple","bold":true},{"text":" 你被击中了!","bold":false}]
execute unless entity @a[team=pd,tag=playing,gamemode=adventure] run function scenario:play_dodgeball/end