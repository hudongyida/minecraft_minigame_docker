# 실행 인자: 거울 주변 플레이어
# $(selfuuid)   - 거울 마커 UUID Token

function system:math/vectors/entity_direction/init

$function system:math/vectors/entity_direction/init {storage_x:bosses.the_shaman.pattern2.mirror.vector.x, storage_y:bosses.the_shaman.pattern2.mirror.vector.y, storage_z:bosses.the_shaman.pattern2.mirror.vector.z, targetuuid:"$(selfuuid)"}
function system:math/vectors/looking_direction/init {storage_x:bosses.the_shaman.pattern2.mirror.vector.origin.x, storage_y:bosses.the_shaman.pattern2.mirror.vector.origin.y, storage_z:bosses.the_shaman.pattern2.mirror.vector.origin.z}
function system:math/vectors/inner_prod/from_scoreboard {x1:bosses.the_shaman.pattern2.mirror.vector.x, y1:bosses.the_shaman.pattern2.mirror.vector.y, z1:bosses.the_shaman.pattern2.mirror.vector.z, x2:bosses.the_shaman.pattern2.mirror.vector.origin.x, y2:bosses.the_shaman.pattern2.mirror.vector.origin.y, z2:bosses.the_shaman.pattern2.mirror.vector.origin.z, output:bosses.the_shaman.pattern2.mirror.cos_theta}

$execute as @s if score @s bosses.the_shaman.pattern2.mirror.cos_theta matches 6000.. run tag @s add bosses.the_shaman.pattern2.mirror.sight_check_target.$(selfuuid)