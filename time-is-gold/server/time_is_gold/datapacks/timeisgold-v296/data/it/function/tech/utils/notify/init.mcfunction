# 플레이어에게 경고를 출력하는 함수 관리 함수
# 실행 인자: 경고를 출력할 플레이어
# $(function)   - 출력할 경고 함수 전체 경로(actionbar, 효과음 등)

### 경고 쿨다운 값은 admin:config 함수 내에 정의되어 있습니다.

### 아이템 쿨다운 함수처럼 인자가 있는 경우 해당 함수에서 쿨다운을 직접 관리해야 합니다. (it:tech/utils/cooldown/on_cooldown 함수 참조)

execute if score @s item.utils.notify.cooldown matches 1.. run return fail

$execute at @s run function $(function)
function it:tech/utils/notify/start_cooldown