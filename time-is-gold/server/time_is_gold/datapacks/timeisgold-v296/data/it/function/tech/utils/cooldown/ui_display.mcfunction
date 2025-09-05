# 모디파이어가 적용된 쿨다운을 UI에 표시하는 함수.
# 실행 인자: UI를 표시할 플레이어
# $(base)           - 베이스가 되는 전체 값을 담은 스코어보드
# $(base_target)    - 스코어보드 값을 불러올 대상
# $(value)          - 퍼센트 값이 담긴 스코어보드
# $(value_target)   - 스코어보드 값을 불러올 대상
# $(invert)         - 결과 값 반전(boolean)
# $(item)           - 아이템 ID

$function it:tech/utils/cooldown/operation/apply_modifier {input:"$(base)", input_target:"$(base_target)", output:"item.utils.cooldown.modified_base", output_target:"@s"}
$function it:tech/utils/cooldown/operation/get_modified_cooldown {origin:"$(base)", origin_target:"$(base_target)", modified:"item.utils.cooldown.modified_base", modified_target:"@s", cooldown:"$(value)", output:"item.utils.cooldown.modified_value"}

$function system:ui/bar/set {value:"item.utils.cooldown.modified_value", value_target:"@s", base:"item.utils.cooldown.modified_base", base_target:"@s", invert:$(invert), item:$(item)}