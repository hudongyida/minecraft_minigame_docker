# (시점) -> (타겟) 방향의 단위벡터 계산
# 실행 인자: 원점 엔티티
# $(storage_x)  - 벡터의 X 성분을 저장할 스코어보드 변수(100만큼 곱해져서 저장됨)
# $(storage_y)  - 벡터의 Y 성분을 저장할 스코어보드 변수(100만큼 곱해져서 저장됨)
# $(storage_z)  - 벡터의 Z 성분을 저장할 스코어보드 변수(100만큼 곱해져서 저장됨)
# $(targetuuid) - 타겟 엔티티 UUID Token

### 주의! - 엔티티 좌표의 절댓값이 10,000,000을 초과할 경우 오버플로우가 발생할 수 있음.

execute as @s at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^ {Tags:[system.math.vectors.marker_origin]}
$execute as @s at @s anchored eyes positioned ^ ^ ^ facing entity $(targetuuid) eyes positioned ^ ^ ^1 run summon marker ^ ^ ^ {Tags:[system.math.vectors.marker_target]}

execute as @s at @s anchored eyes positioned ^ ^ ^ store result score @s system.math.vectors.x1 run data get entity @n[type=marker,tag=system.math.vectors.marker_origin,distance=..0.1] Pos[0] 100
execute as @s at @s anchored eyes positioned ^ ^ ^ store result score @s system.math.vectors.y1 run data get entity @n[type=marker,tag=system.math.vectors.marker_origin,distance=..0.1] Pos[1] 100
execute as @s at @s anchored eyes positioned ^ ^ ^ store result score @s system.math.vectors.z1 run data get entity @n[type=marker,tag=system.math.vectors.marker_origin,distance=..0.1] Pos[2] 100

$execute as @s at @s anchored eyes positioned ^ ^ ^ facing entity $(targetuuid) eyes positioned ^ ^ ^1 store result score @s system.math.vectors.x2 run data get entity @e[tag=system.math.vectors.marker_target,distance=..0.1,sort=nearest,limit=1] Pos[0] 100
$execute as @s at @s anchored eyes positioned ^ ^ ^ facing entity $(targetuuid) eyes positioned ^ ^ ^1 store result score @s system.math.vectors.y2 run data get entity @e[tag=system.math.vectors.marker_target,distance=..0.1,sort=nearest,limit=1] Pos[1] 100
$execute as @s at @s anchored eyes positioned ^ ^ ^ facing entity $(targetuuid) eyes positioned ^ ^ ^1 store result score @s system.math.vectors.z2 run data get entity @e[tag=system.math.vectors.marker_target,distance=..0.1,sort=nearest,limit=1] Pos[2] 100

$scoreboard players operation @s $(storage_x) = @s system.math.vectors.x2
$scoreboard players operation @s $(storage_y) = @s system.math.vectors.y2
$scoreboard players operation @s $(storage_z) = @s system.math.vectors.z2

$scoreboard players operation @s $(storage_x) -= @s system.math.vectors.x1
$scoreboard players operation @s $(storage_y) -= @s system.math.vectors.y1
$scoreboard players operation @s $(storage_z) -= @s system.math.vectors.z1

kill @e[type=marker,tag=system.math.vectors.marker_origin]
kill @e[type=marker,tag=system.math.vectors.marker_target]