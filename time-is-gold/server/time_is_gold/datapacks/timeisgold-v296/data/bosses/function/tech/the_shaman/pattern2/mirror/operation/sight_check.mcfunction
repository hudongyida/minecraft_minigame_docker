$execute unless entity @a[tag=bosses.the_shaman.pattern2.mirror.sight_check_target.$(selfuuid)] run return fail

$execute as @a[tag=bosses.the_shaman.pattern2.mirror.sight_check_target.$(selfuuid),sort=random,limit=1] run tag @s add bosses.the_shaman.pattern2.mirror.sight_check.$(selfuuid)
$execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker.direction.$(selfuuid),distance=..0.5] anchored eyes rotated as @s run rotate @s facing entity @p[tag=bosses.the_shaman.pattern2.mirror.sight_check.$(selfuuid)] eyes
$execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker.direction.$(selfuuid),distance=..0.5] anchored eyes rotated as @s run function monsters:tech/global/utils/raycast/default/init with storage timeisgold:function_api stack[-1]

$tag @a[tag=bosses.the_shaman.pattern2.mirror.sight_check.$(selfuuid)] remove bosses.the_shaman.pattern2.mirror.sight_check_target.$(selfuuid)
$tag @a[tag=bosses.the_shaman.pattern2.mirror.sight_check.$(selfuuid)] remove bosses.the_shaman.pattern2.mirror.sight_check.$(selfuuid)

$execute at @s if entity @a[tag=bosses.the_shaman.pattern2.mirror.sight_check_target.$(selfuuid)] run function bosses:tech/the_shaman/pattern2/mirror/operation/sight_check {selfuuid:"$(selfuuid)"}