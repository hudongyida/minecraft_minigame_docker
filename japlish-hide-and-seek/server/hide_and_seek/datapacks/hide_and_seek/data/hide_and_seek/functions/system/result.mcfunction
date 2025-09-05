# 今回の結果を出力
tellraw @a {"text":"[Result]"}
execute unless entity @a[team=hider] run tellraw @a [{"text":"胜利阵营: "},{"text":"Seeker(初)","color":"red"}]
execute unless entity @a[team=hider] run tellraw @a [{"text":" "},{"selector":"@a[team=seeker,tag=initial]","color":"red"}]
execute if entity @a[team=hider] run tellraw @a [{"text":"胜利阵营: "},{"text":"Hider","color":"aqua"}]
execute if entity @a[team=hider] run tellraw @a [{"text":" "},{"selector":"@a[team=hider]","color":"aqua"}]
tellraw @a [{"text":"--------------------------------------","color":"white"}]
tellraw @a [{"text":"<Seeker(初)>  ","color":"red"},{"selector":"@a[team=!hider,tag=initial]","color":"red"}]
tellraw @a [{"text":"<Seeker(増)>  ","color":"red"},{"selector":"@a[team=seeker,tag=!initial]","color":"red"}]
tellraw @a [{"text":"<Hider>    ","color":"aqua"},{"selector":"@a[team=hider]","color":"aqua"}]
