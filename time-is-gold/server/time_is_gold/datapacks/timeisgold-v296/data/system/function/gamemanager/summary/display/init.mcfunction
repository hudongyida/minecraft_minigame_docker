scoreboard players operation #SYSTEM system.gamemanager.summary.elapsed_time.minutes = #SYSTEM system.gamemanager.summary.elapsed_time
scoreboard players operation #SYSTEM system.gamemanager.summary.elapsed_time.seconds = #SYSTEM system.gamemanager.summary.elapsed_time
scoreboard players operation #SYSTEM system.gamemanager.summary.elapsed_time.minutes /= #1200 scoreboardConstant
scoreboard players operation #SYSTEM system.gamemanager.summary.elapsed_time.seconds %= #1200 scoreboardConstant
scoreboard players operation #SYSTEM system.gamemanager.summary.elapsed_time.seconds /= #20 scoreboardConstant

execute as @a[team=players] run function system:gamemanager/summary/display/set_player_data
function system:gamemanager/summary/display/display