# 아이템 쿨다운을 시작하는 함수
# $(scoreboard) - 쿨다운 스코어보드
# $(value)      - 쿨다운 시간(틱 단위)
# 실행 인자: 쿨다운 기능이 있는 아이템을 사용한 플레이어

$scoreboard players set @s $(scoreboard) $(value)
$scoreboard players set #MAX_VALUE $(scoreboard) $(value)
function it:tech/utils/notify/start_cooldown