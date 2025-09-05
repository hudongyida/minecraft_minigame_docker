# 모든 플레이어가 사망했을 때 게임을 종료하는 함수

scoreboard players set #SYSTEM system.gamemanager.game_over.check 1
scoreboard players reset #SYSTEM system.gamemanager.count.player_total
scoreboard players set @a system.gamemanager.player_death.titlecount 101
execute as @a run title @s subtitle ""
function bosses:tech/utils/music/stop

tellraw @a ["",{"color":"aqua","shadow_color":-46415,"text":"逆锚协议"},": ",{"translate":"system.gamemanager.game_over.actionbar"}]

schedule function system:gamemanager/finish_game 15s