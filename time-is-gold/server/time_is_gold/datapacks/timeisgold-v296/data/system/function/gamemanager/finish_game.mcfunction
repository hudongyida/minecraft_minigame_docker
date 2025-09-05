# 게임이 종료될 때 실행되는 함수.

function system:gamemanager/connection/register_players/reset_data
function system:gamemanager/summary/display/init

scoreboard players reset #SYSTEM system.gamemanager.game_over.check
scoreboard players reset #SYSTEM system.gamemanager.floor_started
scoreboard players reset #SYSTEM system.gamemanager.floor_started.room_count
scoreboard players reset #SYSTEM system.gamemanager.bossfight.start_check
scoreboard players reset #SYSTEM system.gamemanager.bossfight.end_check
scoreboard players reset #SYSTEM system.gamemanager.game_session
scoreboard players reset #SYSTEM dungeon.floor
scoreboard players reset #SYSTEM system.gamemanager.count.player_max

execute as @a run function it:item_abilities_reset
function bosses:tech/utils/music/stop

function admin:clear

# 모든 플레이어를 로비로 텔레포트
execute as @a run team join ready
execute as @a run function system:lobby/player/reset