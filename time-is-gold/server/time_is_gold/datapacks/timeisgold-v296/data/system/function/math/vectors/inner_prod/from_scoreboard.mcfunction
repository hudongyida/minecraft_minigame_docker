# 두 단위벡터의 내적 값 계산
# 실행 인자: 연산을 수행하고 결과를 저장할 엔티티
# $(x1), $(y1), $(z1)   - 단위벡터 1의 X, Y, Z 성분 스코어보드 이름
# $(x2), $(y2), $(z2)   - 단위벡터 2의 X, Y, Z 성분 스코어보드 이름
# $(output)             - 연산 결과를 저장할 스코어보드 변수 이름

$scoreboard players operation @s system.math.vectors.x1 = @s $(x1)
$scoreboard players operation @s system.math.vectors.y1 = @s $(y1)
$scoreboard players operation @s system.math.vectors.z1 = @s $(z1)

$scoreboard players operation @s system.math.vectors.x2 = @s $(x2)
$scoreboard players operation @s system.math.vectors.y2 = @s $(y2)
$scoreboard players operation @s system.math.vectors.z2 = @s $(z2)

scoreboard players operation @s system.math.vectors.x1 *= @s system.math.vectors.x2
scoreboard players operation @s system.math.vectors.y1 *= @s system.math.vectors.y2
scoreboard players operation @s system.math.vectors.z1 *= @s system.math.vectors.z2

$scoreboard players operation @s $(output) = @s system.math.vectors.x1
$scoreboard players operation @s $(output) += @s system.math.vectors.y1
$scoreboard players operation @s $(output) += @s system.math.vectors.z1

# 벡터 내적 -> A dot B = |A||B|cos(theta)
# cos(theta) = A dot B / |A||B|
# |A| = |B| = 1(단위벡터)일 때 -> cos(theta) = A dot B