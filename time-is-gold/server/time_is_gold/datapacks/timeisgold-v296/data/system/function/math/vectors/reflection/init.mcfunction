# 현재 위치에서 반사 벡터 계산 (소수점 2자리 정확도)
# 실행 인자: 반사 연산을 적용할 엔티티
# 실행 위치: 반사 연산이 일어나는 위치
# $(reflect_distance)   - 반사 연산 위치에서 벽까지의 거리
# $(output_x), $(output_y), $(output_z) - 반사 벡터의 X, Y, Z 성분 스코어보드

# R = P + 2n(-P \cdot n)/|n|^2

# P, n 벡터 계산
execute as @s run function system:math/vectors/looking_direction/init {storage_x:system.math.vectors.reflection.incidence.x, storage_y:system.math.vectors.reflection.incidence.y, storage_z:system.math.vectors.reflection.incidence.z}
$execute as @s positioned ^ ^ ^ run function system:math/vectors/reflection/get_normal_vector {reflect_distance:$(reflect_distance)}

# -P 계산
scoreboard players operation @s system.math.vectors.reflection.incidence_inv.x = @s system.math.vectors.reflection.incidence.x
scoreboard players operation @s system.math.vectors.reflection.incidence_inv.y = @s system.math.vectors.reflection.incidence.y
scoreboard players operation @s system.math.vectors.reflection.incidence_inv.z = @s system.math.vectors.reflection.incidence.z
scoreboard players operation @s system.math.vectors.reflection.incidence_inv.x *= -1 scoreboardConstant
scoreboard players operation @s system.math.vectors.reflection.incidence_inv.y *= -1 scoreboardConstant
scoreboard players operation @s system.math.vectors.reflection.incidence_inv.z *= -1 scoreboardConstant

# |n|^2 계산
execute if score @s system.math.vectors.reflection.normal.x matches -100..100 run scoreboard players add @s system.math.vectors.reflection.normal.norm 10000
execute if score @s system.math.vectors.reflection.normal.y matches -100..100 run scoreboard players add @s system.math.vectors.reflection.normal.norm 10000
execute if score @s system.math.vectors.reflection.normal.z matches -100..100 run scoreboard players add @s system.math.vectors.reflection.normal.norm 10000
execute unless score @s system.math.vectors.reflection.normal.x matches -100..100 run scoreboard players set @s system.math.vectors.reflection.normal.x 0
execute unless score @s system.math.vectors.reflection.normal.y matches -100..100 run scoreboard players set @s system.math.vectors.reflection.normal.y 0
execute unless score @s system.math.vectors.reflection.normal.z matches -100..100 run scoreboard players set @s system.math.vectors.reflection.normal.z 0

# 2n(-P \cdot n)/|n|^2 계산
execute as @s run function system:math/vectors/inner_prod/from_scoreboard {x1:system.math.vectors.reflection.incidence_inv.x, y1:system.math.vectors.reflection.incidence_inv.y, z1:system.math.vectors.reflection.incidence_inv.z, x2:system.math.vectors.reflection.normal.x, y2:system.math.vectors.reflection.normal.y, z2:system.math.vectors.reflection.normal.z, output:system.math.vectors.reflection.temp}

scoreboard players operation @s system.math.vectors.reflection.temp *= #2 scoreboardConstant
scoreboard players operation @s system.math.vectors.reflection.normal.x *= @s system.math.vectors.reflection.temp
scoreboard players operation @s system.math.vectors.reflection.normal.y *= @s system.math.vectors.reflection.temp
scoreboard players operation @s system.math.vectors.reflection.normal.z *= @s system.math.vectors.reflection.temp
scoreboard players operation @s system.math.vectors.reflection.normal.x /= @s system.math.vectors.reflection.normal.norm
scoreboard players operation @s system.math.vectors.reflection.normal.y /= @s system.math.vectors.reflection.normal.norm
scoreboard players operation @s system.math.vectors.reflection.normal.z /= @s system.math.vectors.reflection.normal.norm

# R 계산
$scoreboard players operation @s $(output_x) = @s system.math.vectors.reflection.incidence.x
$scoreboard players operation @s $(output_y) = @s system.math.vectors.reflection.incidence.y
$scoreboard players operation @s $(output_z) = @s system.math.vectors.reflection.incidence.z
$scoreboard players operation @s $(output_x) += @s system.math.vectors.reflection.normal.x
$scoreboard players operation @s $(output_y) += @s system.math.vectors.reflection.normal.y
$scoreboard players operation @s $(output_z) += @s system.math.vectors.reflection.normal.z