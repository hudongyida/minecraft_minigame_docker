# 실행 인자: @e[type=illusioner,tag=boss.the_shaman.pattern6.clone]

$execute unless entity @a[tag=bosses.the_shaman.pattern6.clone.sight_check_target.$(selfuuid)] run return fail

# 분신 위에 타고 있는 마커를 기준으로 raycast 실행
$execute as @a[tag=bosses.the_shaman.pattern6.clone.sight_check_target.$(selfuuid),sort=random,limit=1] run tag @s add bosses.the_shaman.pattern6.clone.sight_check.$(selfuuid)
$execute as @s on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] at @s anchored eyes rotated as @s run rotate @s facing entity @p[tag=bosses.the_shaman.pattern6.clone.sight_check.$(selfuuid)] eyes
execute as @s on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] at @s anchored eyes rotated as @s run function monsters:tech/global/utils/raycast/default/init with storage timeisgold:function_api stack[-1]

$tag @a[tag=bosses.the_shaman.pattern6.clone.sight_check.$(selfuuid)] remove bosses.the_shaman.pattern6.clone.sight_check_target.$(selfuuid)
$tag @a[tag=bosses.the_shaman.pattern6.clone.sight_check.$(selfuuid)] remove bosses.the_shaman.pattern6.clone.sight_check.$(selfuuid)

$execute as @s at @s if entity @a[tag=bosses.the_shaman.pattern6.clone.sight_check_target.$(selfuuid)] run function bosses:tech/the_shaman/pattern6/clone/operation/sight_check {selfuuid:"$(selfuuid)"}