# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker]

# 플레이어 시야 내에 이 거울이 있는지 체크
$execute as @a[predicate=system:player,distance=..30] run function bosses:tech/the_shaman/pattern2/mirror/operation/tag_target {selfuuid:"$(selfuuid)"}

$data modify storage timeisgold:function_api stack append value {path:"bosses:tech/the_shaman/pattern2/mirror", initfunction:none, tickfunction:none, hitfunction:hit, endfunction:none,\
                                                                monsteruuid:"$(selfuuid)", target:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:60, system:1}
$execute at @s run function bosses:tech/the_shaman/pattern2/mirror/macro/summon_marker {selfuuid:"$(selfuuid)"}
$execute at @s run function bosses:tech/the_shaman/pattern2/mirror/operation/sight_check {selfuuid:"$(selfuuid)"}
$execute at @s run function bosses:tech/the_shaman/pattern2/mirror/macro/kill_marker {selfuuid:"$(selfuuid)"}
data remove storage timeisgold:function_api stack[-1]

# 거울을 보고 있는 플레이어가 없다면 진행 초기화
$execute unless entity @a[tag=bosses.the_shaman.pattern2.mirror.watching.$(selfuuid)] run scoreboard players reset @s bosses.the_shaman.pattern2.mirror.on_sight

# 발광 효과 on/off
execute if score @s bosses.the_shaman.pattern2.mirror.on_sight matches 1.. unless score @s bosses.the_shaman.pattern2.mirror.glow matches 1.. at @s run function bosses:tech/the_shaman/pattern2/mirror/vfx/glow/on with entity @s data
execute unless score @s bosses.the_shaman.pattern2.mirror.on_sight matches 1.. if score @s bosses.the_shaman.pattern2.mirror.glow matches 1.. at @s run function bosses:tech/the_shaman/pattern2/mirror/vfx/glow/off with entity @s data

# SFX 재생
$execute as @a[tag=bosses.the_shaman.pattern2.mirror.watching.$(selfuuid)] at @s run function bosses:tech/the_shaman/pattern2/mirror/sfx/watching_mirror {selfuuid:"$(selfuuid)"}

# 플레이어가 일정 시간 동안 이 거울을 봤다면 파괴
execute if score @s bosses.the_shaman.pattern2.mirror.on_sight >= #SYSTEM bosses.the_shaman.pattern2.mirror.max_on_sight run function bosses:tech/the_shaman/pattern2/mirror/shatter_a with entity @s data
$tag @a[tag=bosses.the_shaman.pattern2.mirror.watching.$(selfuuid)] remove bosses.the_shaman.pattern2.mirror.watching.$(selfuuid)