# 태그된 몬스터가 플레이어의 시야각 내에 있는지 확인하는 함수.
# 실행 인자: 시야를 확인할 플레이어
# $(playeruuid) - 플레이어의 UUID Token

function system:math/vectors/looking_direction/init {storage_x:item.utils.entity.on_sight.vector.origin.x, storage_y:item.utils.entity.on_sight.vector.origin.y, storage_z:item.utils.entity.on_sight.vector.origin.z}
$execute as @e[tag=item.utils.entity.on_sight.target] run function system:math/vectors/entity_direction/init {storage_x:item.utils.entity.on_sight.vector.x, storage_y:item.utils.entity.on_sight.vector.y, storage_z:item.utils.entity.on_sight.vector.z, targetuuid:"$(playeruuid)"}

$execute as @e[tag=item.utils.entity.on_sight.target] run scoreboard players operation @s item.utils.entity.on_sight.vector.origin.x = $(playeruuid) item.utils.entity.on_sight.vector.origin.x
$execute as @e[tag=item.utils.entity.on_sight.target] run scoreboard players operation @s item.utils.entity.on_sight.vector.origin.y = $(playeruuid) item.utils.entity.on_sight.vector.origin.y
$execute as @e[tag=item.utils.entity.on_sight.target] run scoreboard players operation @s item.utils.entity.on_sight.vector.origin.z = $(playeruuid) item.utils.entity.on_sight.vector.origin.z

execute as @e[tag=item.utils.entity.on_sight.target] run function system:math/vectors/inner_prod/from_scoreboard {x1:item.utils.entity.on_sight.vector.x, y1:item.utils.entity.on_sight.vector.y, z1:item.utils.entity.on_sight.vector.z, x2:item.utils.entity.on_sight.vector.origin.x, y2:item.utils.entity.on_sight.vector.origin.y, z2:item.utils.entity.on_sight.vector.origin.z, output:item.utils.entity.on_sight.cos_theta}

$execute as @e[tag=item.utils.entity.on_sight.target] unless score @s item.utils.entity.on_sight.cos_theta <= $(playeruuid) item.utils.entity.on_sight.cos_theta run tag @s remove item.utils.entity.on_sight.target.$(playeruuid)
$execute as @e[tag=item.utils.entity.on_sight.target] unless score @s item.utils.entity.on_sight.cos_theta <= $(playeruuid) item.utils.entity.on_sight.cos_theta run tag @s remove item.utils.entity.on_sight.target