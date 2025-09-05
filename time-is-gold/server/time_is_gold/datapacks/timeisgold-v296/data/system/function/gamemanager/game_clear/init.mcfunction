# 게임이 클리어되었을 때 실행되는 함수.

function system:gamemanager/finish_game

# Fade Out 효과 제거
function system:ui/fade_out/terminate

schedule function system:gamemanager/game_clear/play_fx 40t