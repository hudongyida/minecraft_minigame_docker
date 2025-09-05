# 초기화된 랜덤 리스트에서 비복원 추출을 수행하는 함수
# 반환값이 -1일 경우 리스트가 빈 상태

### 주의! 이 함수는 스코어보드에 값을 저장하지 않고 값 자체를 return 형태로 바로 반환합니다.

execute store result score #RANDOM system.math.random.range run data get storage timeisgold:random shuffle_range.list
execute if score #RANDOM system.math.random.range matches ..0 run return -1
execute store result storage timeisgold:random shuffle_range.range int 1 run scoreboard players remove #RANDOM system.math.random.range 1
return run function system:math/random/shuffle_range/macro/roll_index with storage timeisgold:random shuffle_range