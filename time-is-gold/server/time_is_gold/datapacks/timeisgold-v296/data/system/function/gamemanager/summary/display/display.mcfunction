tellraw @a [{"text":"- - - - - - - - - - - - - - - - - - - - - - - - - - -","color":"#55ff55","bold":true}]
tellraw @a [{"text":"                           "},{"translate":"system.gamemanager.summary.title"}]
tellraw @a [{"text":"                         "},{"translate":"system.gamemanager.summary.elapsed_time"},{"score":{"name":"#SYSTEM","objective":"system.gamemanager.summary.elapsed_time.minutes"},"color":"green","extra":[{"text":"m","color":"white"}]},{"score":{"name":"#SYSTEM","objective":"system.gamemanager.summary.elapsed_time.seconds"},"color":"green","extra":[{"text":"s","color":"white"}]}]
tellraw @a [{"text":"                         "},{"translate":"system.gamemanager.summary.player_count"},{"score":{name:"#SYSTEM",objective:"system.gamemanager.count.player_max"},"color":"green"}]
tellraw @a ""
execute as @a[team=players] run function system:gamemanager/summary/display/individual
tellraw @a [{"text":"- - - - - - - - - - - - - - - - - - - - - - - - - - -","color":"#55ff55","bold":true}]