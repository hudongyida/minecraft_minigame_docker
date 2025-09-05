# 모디파이어가 적용된 이후 쿨다운을 계산하는 함수.
# 실행 인자: 모디파이어가 적용된 쿨다운을 계산할 플레이어
# $(origin)         - 원래 최댓값이 저장된 스코어보드
# $(origin_target)  - 스코어보드 값을 불러올 대상
# $(modified)       - 모디파이어가 적용된 최댓값이 저장된 스코어보드
# $(modified_target)- 스코어보드 값을 불러올 대상
# $(cooldown)       - 쿨다운이 저장된 스코어보드
# $(output)         - 모디파이어가 적용된 쿨다운이 저장될 스코어보드

# 쿨다운 계산 -> 먼저 최댓값에 모디파이어 적용 -> 기존 최댓값과 계산된 최댓값의 차 계산 -> 쿨다운에서 이걸 빼서 최종 쿨다운 계산

# 최댓값이 동일할 경우 계산 생략
$scoreboard players operation @s $(output) = @s $(cooldown)
$execute if score $(origin_target) $(origin) = $(modified_target) $(modified) run return fail

$scoreboard players operation @s item.utils.cooldown.modified_diff = $(origin_target) $(origin)
$scoreboard players operation @s item.utils.cooldown.modified_diff -= $(modified_target) $(modified)

$scoreboard players operation @s $(output) -= @s item.utils.cooldown.modified_diff
$scoreboard players operation @s $(output) > #0 scoreboardConstant