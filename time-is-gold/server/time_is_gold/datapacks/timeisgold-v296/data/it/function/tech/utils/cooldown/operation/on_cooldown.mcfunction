# 남은 쿨다운 시간 계산 및 표시
# $(scoreboard) - 쿨다운이 저장된 스코어보드
# $(base)       - 쿨다운 최댓값이 저장된 스코어보드
# $(base_target)- 스코어보드 값을 불러올 대상

$scoreboard players operation @s item.utils.notify.delay_cooldown = $(base_target) $(base)
scoreboard players operation @s item.utils.notify.delay_cooldown -= #10 scoreboardConstant
$execute if score @s $(scoreboard) > @s item.utils.notify.delay_cooldown run return fail

$execute unless score @s item.utils.notify.cooldown matches 1.. run function it:tech/utils/cooldown/operation/cooldown_notify {scoreboard:$(scoreboard)}