# 주어진 값의 제곱근 계산
# 실행 인자: 제곱근 값을 저장할 엔티티
# $(input)  - 입력값이 저장된 스코어보드
# $(output) - 제곱근 값을 저장할 스코어보드(소수점 2자리 정확도, 100만큼 곱해짐)

$scoreboard players operation @s system.math.sqrt.input = @s $(input)
scoreboard players set @s system.math.sqrt.term 1561
scoreboard players operation @s system.math.sqrt.input *= #10000 scoreboardConstant

execute as @s run function system:math/sqrt/newton_rapson
execute as @s run function system:math/sqrt/newton_rapson
execute as @s run function system:math/sqrt/newton_rapson
execute as @s run function system:math/sqrt/newton_rapson
execute as @s run function system:math/sqrt/newton_rapson

$scoreboard players operation @s $(output) = @s system.math.sqrt.term