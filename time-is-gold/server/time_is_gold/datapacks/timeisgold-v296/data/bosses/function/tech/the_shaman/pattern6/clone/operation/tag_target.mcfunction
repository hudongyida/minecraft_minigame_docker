# 실행 인자: 분신 주변 플레이어
# $(selfuuid)   - 분신 엔티티 UUID Token

function system:math/vectors/entity_direction/init

$function system:math/vectors/entity_direction/init {storage_x:bosses.the_shaman.pattern6.clone.vector.x, storage_y:bosses.the_shaman.pattern6.clone.vector.y, storage_z:bosses.the_shaman.pattern6.clone.vector.z, targetuuid:"$(selfuuid)"}
function system:math/vectors/looking_direction/init {storage_x:bosses.the_shaman.pattern6.clone.vector.origin.x, storage_y:bosses.the_shaman.pattern6.clone.vector.origin.y, storage_z:bosses.the_shaman.pattern6.clone.vector.origin.z}
function system:math/vectors/inner_prod/from_scoreboard {x1:bosses.the_shaman.pattern6.clone.vector.x, y1:bosses.the_shaman.pattern6.clone.vector.y, z1:bosses.the_shaman.pattern6.clone.vector.z, x2:bosses.the_shaman.pattern6.clone.vector.origin.x, y2:bosses.the_shaman.pattern6.clone.vector.origin.y, z2:bosses.the_shaman.pattern6.clone.vector.origin.z, output:bosses.the_shaman.pattern6.clone.cos_theta}

$execute as @s if score @s bosses.the_shaman.pattern6.clone.cos_theta matches 6000.. run tag @s add bosses.the_shaman.pattern6.clone.sight_check_target.$(selfuuid)