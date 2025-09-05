# 실행 위치를 중심으로 직사각형 범위 내 동일한 Y 값의 랜덤한 정수 좌표를 선택하는 함수.
# $(tag)        - 선택된 좌표에 소환되는 마커에 부여될 태그
# $(dx), $(dz)  - X, Z축 범위(+, - 모두 동일한 범위 적용)

scoreboard players reset #TEMP bosses.utils.random_pos.epoch
$execute positioned ~ ~ ~ run function bosses:tech/utils/random_pos/step {dx:$(dx), dz:$(dz), tag:"$(tag)"}