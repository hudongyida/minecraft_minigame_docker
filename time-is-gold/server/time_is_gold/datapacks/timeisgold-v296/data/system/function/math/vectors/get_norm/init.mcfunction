# 주어진 벡터의 길이 계산(소수점 2자리 정확도)
# $(x), $(y), $(z)  - 벡터의 X, Y, Z 성분이 저장된 스코어보드 변수(100만큼 곱해져서 저장됨)
# $(output)         - 벡터의 길이를 저장할 스코어보드 변수

$scoreboard players set @s $(output) 0
$scoreboard players operation @s system.math.vectors.temp = @s $(x)
scoreboard players operation @s system.math.vectors.temp *= @s system.math.vectors.temp
$scoreboard players operation @s $(output) += @s system.math.vectors.temp

$scoreboard players operation @s system.math.vectors.temp = @s $(y)
scoreboard players operation @s system.math.vectors.temp *= @s system.math.vectors.temp
$scoreboard players operation @s $(output) += @s system.math.vectors.temp

$scoreboard players operation @s system.math.vectors.temp = @s $(z)
scoreboard players operation @s system.math.vectors.temp *= @s system.math.vectors.temp
$scoreboard players operation @s $(output) += @s system.math.vectors.temp

$execute as @s run function system:math/sqrt/raw/init {input:$(output), output:$(output)}