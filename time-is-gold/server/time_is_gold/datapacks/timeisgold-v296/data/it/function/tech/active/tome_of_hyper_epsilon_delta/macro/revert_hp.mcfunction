# 실행 인자: tome_of_hyper_epsilon_delta에 영향을 받은 몬스터
# $(max_hp)     - 몬스터의 기존 최대 체력
# $(prev_hp)    - 몬스터의 기존 체력

$attribute @s max_health base set $(max_hp)
$data modify entity @s Health set value $(prev_hp)