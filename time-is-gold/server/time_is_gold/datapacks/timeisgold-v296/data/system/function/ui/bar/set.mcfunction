# XP BAR 호출 함수 (실행자: @s)
# 실행 인자: UI를 표시할 플레이어
# base:              베이스가 되는 전체 값을 담은 스코어보드
#   > base_target:   스코어보드 값을 불러올 대상
# value:             퍼센트 값이 담긴 스코어보드
#   > value_target:  스코어보드 값을 불러올 대상
# invert(boolean):   결과 값 반전
# item:              아이템 ID

$execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{item:$(item)}] run return fail

$scoreboard players operation @s system.ui.bar.base_scoreboard = $(base_target) $(base)
$scoreboard players operation @s system.ui.bar.value_scoreboard = $(value_target) $(value)

scoreboard players operation @s system.ui.bar.value_scoreboard *= #1000 scoreboardConstant
scoreboard players operation @s system.ui.bar.value_scoreboard /= @s system.ui.bar.base_scoreboard

# Invert
$execute if score #1 scoreboardConstant matches $(invert) run scoreboard players operation @s system.ui.bar.value_scoreboard -= #1000 scoreboardConstant
$execute if score #1 scoreboardConstant matches $(invert) run scoreboard players operation @s system.ui.bar.value_scoreboard *= -1 scoreboardConstant

# Display
data modify storage timeisgold:function_api stack append value {points:0}
execute store result storage timeisgold:function_api stack[-1].points int 1 run scoreboard players get @s system.ui.bar.value_scoreboard

function system:ui/bar/bar_update with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

# 손에 아이템이 없을 경우 item_abilities에서 0으로 변경.