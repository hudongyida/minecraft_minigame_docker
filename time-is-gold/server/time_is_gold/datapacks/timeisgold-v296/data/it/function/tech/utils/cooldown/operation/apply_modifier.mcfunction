# 주어진 값에 쿨다운 모디파이어를 적용하는 함수.
# $(input)          - 원본 값이 저장된 스코어보드
# $(input_target)   - 원본 값이 저장된 스코어보드를 가진 타겟
# $(output)         - 모디파이어 적용 후 값이 저장될 스코어보드
# $(output_target)  - 모디파이어 적용 후 값이 저장될 스코어보드 + 쿨다운 모디파이어의 타겟

### 주의 - 쿨다운 감소 효과만 구현되어 있음, 쿨다운 증가 효과는 별도 예외처리 필요

# 기본값이 모디파이어 적용 후 최솟값보다 작을 경우 적용 제외

#$say $(input) $(input_target) $(output) $(output_target)

$scoreboard players operation $(output_target) $(output) = $(input_target) $(input)
$execute if score $(input_target) $(input) <= #MIN_VALUE item.utils.cooldown.modified_base run return fail

$scoreboard players operation $(output_target) $(output) -= $(output_target) combat.cooldown_modifier_delta
$scoreboard players operation $(output_target) $(output) *= $(output_target) combat.cooldown_modifier_multiplier
$scoreboard players operation $(output_target) $(output) /= #100 scoreboardConstant

$scoreboard players operation $(output_target) $(output) > #MIN_VALUE item.utils.cooldown.modified_base