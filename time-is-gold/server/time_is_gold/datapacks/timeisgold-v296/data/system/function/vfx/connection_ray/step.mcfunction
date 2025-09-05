$execute as @s at @s positioned ~ ~ ~ run function $(tickfunction) with entity @s data
$execute as @s at @s positioned ^ ^ ^ run tp @s ^ ^ ^$(speed)
execute as @s run scoreboard players remove @s system.vfx.connection_ray.step 1

$execute as @s at @s as $(targetuuid) if entity @s[dx=0,dy=0,dz=0] run kill $(selfuuid)

# 목표 지점까지의 L1 Norm 계산
execute as @s store result score @s system.vfx.connection_ray.temp1 run data get entity @s Pos[0] 100
$execute as @s store result score @s system.vfx.connection_ray.temp2 run data get entity $(targetuuid) Pos[0] 100
execute as @s run scoreboard players operation @s system.vfx.connection_ray.temp1 -= @s system.vfx.connection_ray.temp2
execute as @s if score @s system.vfx.connection_ray.temp1 matches ..-1 run scoreboard players operation @s system.vfx.connection_ray.temp1 *= -1 scoreboardConstant
execute as @s run scoreboard players operation @s system.vfx.connection_ray.norm = @s system.vfx.connection_ray.temp1

execute as @s store result score @s system.vfx.connection_ray.temp1 run data get entity @s Pos[1] 100
$execute as @s store result score @s system.vfx.connection_ray.temp2 run data get entity $(targetuuid) Pos[1] 100
execute as @s run scoreboard players operation @s system.vfx.connection_ray.temp1 -= @s system.vfx.connection_ray.temp2
execute as @s if score @s system.vfx.connection_ray.temp1 matches ..-1 run scoreboard players operation @s system.vfx.connection_ray.temp1 *= -1 scoreboardConstant
execute as @s run scoreboard players operation @s system.vfx.connection_ray.norm += @s system.vfx.connection_ray.temp1

execute as @s store result score @s system.vfx.connection_ray.temp1 run data get entity @s Pos[2] 100
$execute as @s store result score @s system.vfx.connection_ray.temp2 run data get entity $(targetuuid) Pos[2] 100
execute as @s run scoreboard players operation @s system.vfx.connection_ray.temp1 -= @s system.vfx.connection_ray.temp2
execute as @s if score @s system.vfx.connection_ray.temp1 matches ..-1 run scoreboard players operation @s system.vfx.connection_ray.temp1 *= -1 scoreboardConstant
execute as @s run scoreboard players operation @s system.vfx.connection_ray.norm += @s system.vfx.connection_ray.temp1

# 마커 -> 목표 엔티티까지 거리가 최단 거리보다 커진 경우 -> 목표 엔티티를 이미 지나침 -> 삭제
execute as @s if score @s system.vfx.connection_ray.norm <= @s system.vfx.connection_ray.min_norm run scoreboard players operation @s system.vfx.connection_ray.min_norm = @s system.vfx.connection_ray.norm
execute as @s if score @s system.vfx.connection_ray.norm > @s system.vfx.connection_ray.min_norm run scoreboard players set @s system.vfx.connection_ray.step 0

execute as @s unless score @s system.vfx.connection_ray.step matches 1.. run kill @s