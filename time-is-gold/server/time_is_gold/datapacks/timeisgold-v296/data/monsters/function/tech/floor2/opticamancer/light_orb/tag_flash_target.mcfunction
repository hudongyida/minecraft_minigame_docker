# $(monsteruuid)    - light orb를 생성한 광학술사 몬스터의 UUID Token
# $(selfuuid)       - light orb 마커의 UUID Token

$execute as @s run function system:math/vectors/entity_direction/init {storage_x:monsters.floor2.opticamancer.vector.x, storage_y:monsters.floor2.opticamancer.vector.y, storage_z:monsters.floor2.opticamancer.vector.z, targetuuid:"$(selfuuid)"}
execute as @s run function system:math/vectors/looking_direction/init {storage_x:monsters.floor2.opticamancer.vector.origin.x, storage_y:monsters.floor2.opticamancer.vector.origin.y, storage_z:monsters.floor2.opticamancer.vector.origin.z}
execute as @s run function system:math/vectors/inner_prod/from_scoreboard {x1:monsters.floor2.opticamancer.vector.x, y1:monsters.floor2.opticamancer.vector.y, z1:monsters.floor2.opticamancer.vector.z, x2:monsters.floor2.opticamancer.vector.origin.x, y2:monsters.floor2.opticamancer.vector.origin.y, z2:monsters.floor2.opticamancer.vector.origin.z, output:monsters.floor2.opticamancer.cos_theta}

$execute as @s if score @s monsters.floor2.opticamancer.cos_theta matches 6000.. run tag @s add monsters.floor2.opticamaner.light_orb.flash_target.$(monsteruuid)