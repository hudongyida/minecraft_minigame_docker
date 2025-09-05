# 현재 위치에서의 법선벡터 반환
# 실행 인자: 반사 연산을 적용할 엔티티
# 실행 위치: 반사 연산이 일어나는 위치
# $(reflect_distance)   - 반사 연산 위치에서 벽까지의 거리

### 주의! 여기서 계산되는 법선벡터는 모든 원소가 1이라 단위벡터가 아님!!!

scoreboard players reset @s system.math.vectors.reflection.normal.x
scoreboard players reset @s system.math.vectors.reflection.normal.y
scoreboard players reset @s system.math.vectors.reflection.normal.z

# 벽 케이스 처리(6개)
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~ ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100

$execute positioned ^ ^ ^ unless block ~ ~$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100

$execute positioned ^ ^ ^ unless block ~ ~ ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~ ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100

$execute positioned ^ ^ ^ unless block ~ ~-$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100

$execute positioned ^ ^ ^ unless block ~ ~ ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

execute if score @s system.math.vectors.reflection.normal.x matches -100..100 run return fail
execute if score @s system.math.vectors.reflection.normal.y matches -100..100 run return fail
execute if score @s system.math.vectors.reflection.normal.z matches -100..100 run return fail

# 모서리 케이스 처리(12개)
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100

$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~ #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100

$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~ ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~ ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~ ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~ ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~ ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~ ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~ ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~ ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

$execute positioned ^ ^ ^ unless block ~ ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100
$execute positioned ^ ^ ^ unless block ~ ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~ ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100
$execute positioned ^ ^ ^ unless block ~ ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

$execute positioned ^ ^ ^ unless block ~ ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100
$execute positioned ^ ^ ^ unless block ~ ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~ ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100
$execute positioned ^ ^ ^ unless block ~ ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

execute if score @s system.math.vectors.reflection.normal.x matches -100..100 run return fail
execute if score @s system.math.vectors.reflection.normal.y matches -100..100 run return fail
execute if score @s system.math.vectors.reflection.normal.z matches -100..100 run return fail

# 꼭짓점 케이스 처리(8개)
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x -100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100
$execute positioned ^ ^ ^ unless block ~$(reflect_distance) ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y -100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z -100

$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.x 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.y 100
$execute positioned ^ ^ ^ unless block ~-$(reflect_distance) ~-$(reflect_distance) ~-$(reflect_distance) #it:air run scoreboard players set @s system.math.vectors.reflection.normal.z 100