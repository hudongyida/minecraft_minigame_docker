# 두 단위벡터의 내적 값 계산
# 실행 인자: 벡터 연산을 수행하는 엔티티
# $(x1), $(y1), $(z1)   - 단위벡터 1의 X, Y, Z 성분
# $(x2), $(y2), $(z2)   - 단위벡터 2의 X, Y, Z 성분
# $(output)             - 연산 결과를 저장할 스코어보드

$scoreboard players set @s system.math.vectors.x1 $(x1)
$scoreboard players set @s system.math.vectors.y1 $(y1)
$scoreboard players set @s system.math.vectors.z1 $(z1)
$scoreboard players set @s system.math.vectors.x2 $(x2)
$scoreboard players set @s system.math.vectors.y2 $(y2)
$scoreboard players set @s system.math.vectors.z2 $(z2)

scoreboard players operation @s system.math.vectors.x1 *= @s system.math.vectors.x2
scoreboard players operation @s system.math.vectors.y1 *= @s system.math.vectors.y2
scoreboard players operation @s system.math.vectors.z1 *= @s system.math.vectors.z2

$scoreboard players operation @s $(output) = @s system.math.vectors.x1
$scoreboard players operation @s $(output) += @s system.math.vectors.y1
$scoreboard players operation @s $(output) += @s system.math.vectors.z1

# 벡터 내적 -> A dot B = |A||B|cos(theta)
# cos(theta) = A dot B / |A||B|
# |A| = |B| = 1(단위벡터)이므로 cos(theta) = A dot B