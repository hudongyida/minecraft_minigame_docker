# 두 엔티티간의 거리 계산
# 실행 인자: 거리 기준점 엔티티
# $(targetuuid)     - 타겟 엔티티 UUID Token
# $(output)         - 벡터의 길이를 저장할 스코어보드 변수 (소숫점 두자리)

$scoreboard players set @s $(output) 0

execute as @s at @s store result score @s system.math.vectors.x1 run data get entity @s Pos[0] 100
execute as @s at @s store result score @s system.math.vectors.y1 run data get entity @s Pos[1] 100
execute as @s at @s store result score @s system.math.vectors.z1 run data get entity @s Pos[2] 100

#tellraw @a {"score":{"name": "@s","objective": "system.math.vectors.x1"}}

$execute as @s store result score @s system.math.vectors.x2 run data get entity $(targetuuid) Pos[0] 100
$execute as @s store result score @s system.math.vectors.y2 run data get entity $(targetuuid) Pos[1] 100
$execute as @s store result score @s system.math.vectors.z2 run data get entity $(targetuuid) Pos[2] 100

#tellraw @a {"score":{"name": "@s","objective": "system.math.vectors.x2"}}

scoreboard players operation @s system.math.vectors.x1 -= @s system.math.vectors.x2
scoreboard players operation @s system.math.vectors.x1 *= @s system.math.vectors.x1
$scoreboard players operation @s $(output) += @s system.math.vectors.x1

scoreboard players operation @s system.math.vectors.y1 -= @s system.math.vectors.y2
scoreboard players operation @s system.math.vectors.y1 *= @s system.math.vectors.y1
$scoreboard players operation @s $(output) += @s system.math.vectors.y1

scoreboard players operation @s system.math.vectors.z1 -= @s system.math.vectors.z2
scoreboard players operation @s system.math.vectors.z1 *= @s system.math.vectors.z1
$scoreboard players operation @s $(output) += @s system.math.vectors.z1

#$scoreboard players operation @s $(output) /= #100 scoreboardConstants

#$tellraw @a {"score":{"name": "@s","objective": "$(output)"}}

$execute as @s run function system:math/sqrt/raw/init {input:$(output), output:$(output)}

