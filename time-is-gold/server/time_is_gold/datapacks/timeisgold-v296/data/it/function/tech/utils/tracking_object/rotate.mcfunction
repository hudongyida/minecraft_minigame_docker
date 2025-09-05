# 마커와 추적 대상 사이 각도를 계산해서 회전시키는 함수
# 실행 인자: @e[type=marker,tag=item.utils.tracking_object.marker]

execute as @s unless data entity @s data.targetuuid run return fail
$execute as @s at @s run summon marker ~ ~ ~ {Tags:["item.utils.tracking_object.rotation_calc", "item.utils.tracking_object.rotation_calc.$(selfuuid)"]}
execute as @s store result score @s item.utils.tracking_object.theta0 run data get entity @s Rotation[0] 10000
execute as @s store result score @s item.utils.tracking_object.phi0 run data get entity @s Rotation[1] 10000
$execute as @e[type=marker,tag=item.utils.tracking_object.rotation_calc.$(selfuuid),limit=1] at @s positioned ~ ~ ~ facing entity $(targetuuid) eyes run tp @s ~ ~ ~ ~ ~
$execute as @s store result score @s item.utils.tracking_object.theta1 run data get entity @n[type=marker,tag=item.utils.tracking_object.rotation_calc.$(selfuuid),distance=..0.5] Rotation[0] 10000
$execute as @s store result score @s item.utils.tracking_object.phi1 run data get entity @n[type=marker,tag=item.utils.tracking_object.rotation_calc.$(selfuuid),distance=..0.5] Rotation[1] 10000

# theta_diff 계산(== Rotation[0])
scoreboard players operation @s item.utils.tracking_object.theta_diff = @s item.utils.tracking_object.theta0
scoreboard players operation @s item.utils.tracking_object.theta_diff -= @s item.utils.tracking_object.theta1
execute as @s if score @s item.utils.tracking_object.theta_diff matches ..-1 run scoreboard players set @s item.utils.tracking_object.theta_diff.sign 1
scoreboard players operation @s item.utils.tracking_object.theta_diff_inv = @s item.utils.tracking_object.theta1
scoreboard players operation @s item.utils.tracking_object.theta_diff_inv -= @s item.utils.tracking_object.theta0
execute as @s if score @s item.utils.tracking_object.theta_diff_inv matches ..-1 run scoreboard players set @s item.utils.tracking_object.theta_diff.sign 1
scoreboard players operation @s item.utils.tracking_object.theta_diff %= #3600000 scoreboardConstant
scoreboard players operation @s item.utils.tracking_object.theta_diff_inv %= #3600000 scoreboardConstant

execute as @s if score @s item.utils.tracking_object.theta_diff < @s item.utils.tracking_object.theta_diff_inv run scoreboard players operation @s item.utils.tracking_object.calc_temp = @s item.utils.tracking_object.theta_diff
execute as @s if score @s item.utils.tracking_object.theta_diff < @s item.utils.tracking_object.theta_diff_inv if score @s item.utils.tracking_object.theta_diff.sign matches 1 run scoreboard players operation @s item.utils.tracking_object.calc_temp *= -1 scoreboardConstant
execute as @s unless score @s item.utils.tracking_object.theta_diff < @s item.utils.tracking_object.theta_diff_inv run scoreboard players operation @s item.utils.tracking_object.calc_temp = @s item.utils.tracking_object.theta_diff_inv
execute as @s unless score @s item.utils.tracking_object.theta_diff < @s item.utils.tracking_object.theta_diff_inv if score @s item.utils.tracking_object.theta_diff_inv.sign matches 1 run scoreboard players operation @s item.utils.tracking_object.calc_temp *= -1 scoreboardConstant

scoreboard players operation @s item.utils.tracking_object.theta_diff = @s item.utils.tracking_object.calc_temp

# phi_diff 계산(== Rotation[1])
scoreboard players operation @s item.utils.tracking_object.phi_diff = @s item.utils.tracking_object.phi0
scoreboard players operation @s item.utils.tracking_object.phi_diff -= @s item.utils.tracking_object.phi1

# 유도력 적용
scoreboard players operation @s item.utils.tracking_object.theta_diff *= @s item.utils.tracking_object.force_y
scoreboard players operation @s item.utils.tracking_object.theta_diff /= #100 scoreboardConstant
scoreboard players operation @s item.utils.tracking_object.phi_diff *= @s item.utils.tracking_object.force_x
scoreboard players operation @s item.utils.tracking_object.phi_diff /= #100 scoreboardConstant

#tellraw @a [{"text":"theta0: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.theta0"}},{"text":" theta1: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.theta1"}},{"text":" theta_diff: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.theta_diff"}}]
#tellraw @a [{"text":" phi0: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.phi0"}},{"text":" phi1: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.phi1"}},{"text":" phi_diff: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.phi_diff"}}]

#tellraw @a [{"text":"theta_diff: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.theta_diff"}},{"text":" phi_diff: "},{"score":{"name":"@s","objective":"item.utils.tracking_object.phi_diff"}}]

# 다음 방향 회전값 계산
scoreboard players operation @s item.utils.tracking_object.theta0 += @s item.utils.tracking_object.theta_diff
execute as @s if score @s item.utils.tracking_object.theta0 matches 1800001.. run scoreboard players remove @s item.utils.tracking_object.theta0 3600000
execute as @s if score @s item.utils.tracking_object.theta0 matches ..-1800001 run scoreboard players add @s item.utils.tracking_object.theta0 3600000

scoreboard players operation @s item.utils.tracking_object.phi0 -= @s item.utils.tracking_object.phi_diff
execute as @s if score @s item.utils.tracking_object.phi0 matches 900001.. run scoreboard players set @s item.utils.tracking_object.phi0 900000
execute as @s if score @s item.utils.tracking_object.phi0 matches ..-900001 run scoreboard players set @s item.utils.tracking_object.phi0 -900000

execute as @s store result entity @s Rotation[0] float 0.0001 run scoreboard players get @s item.utils.tracking_object.theta0
execute as @s store result entity @s Rotation[1] float 0.0001 run scoreboard players get @s item.utils.tracking_object.phi0

$kill @e[type=marker,tag=item.utils.tracking_object.rotation_calc.$(selfuuid)]