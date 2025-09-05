# 보스전 종료 시 실행되는 함수

function bosses:tech/utils/music/stop

scoreboard players set #SYSTEM system.gamemanager.bossfight.end_check 1
function system:dungeon/boss_arena/enable_door