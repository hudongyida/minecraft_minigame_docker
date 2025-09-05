# $(min) ~ $(max) - 1까지의 정수를 랜덤하게 섞은 리스트를 초기화하는 함수.
# $(min) - 범위의 시작 정수
# $(max) - 범위의 끝 정수 + 1

$scoreboard players set #RANDOM system.math.random.range $(max)
$scoreboard players set #RANDOM system.math.random.index $(min)
data modify storage timeisgold:random shuffle_range.list set value []
$data modify storage timeisgold:random shuffle_range.index set value $(min)
function system:math/random/shuffle_range/macro/put_integer with storage timeisgold:random shuffle_range