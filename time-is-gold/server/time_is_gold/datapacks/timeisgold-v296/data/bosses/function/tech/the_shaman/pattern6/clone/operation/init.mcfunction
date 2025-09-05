# 실행 인자: @e[type=illusioner,tag=boss.the_shaman.pattern6.clone]

# 플레이어 시야 내에 이 분신이 있는지 체크
$execute at @s as @a[predicate=system:player,distance=..30] run function bosses:tech/the_shaman/pattern6/clone/operation/tag_target {selfuuid:"$(selfuuid)"}

$data modify storage timeisgold:function_api stack append value {path:"bosses:tech/the_shaman/pattern6/clone/operation", initfunction:none, tickfunction:none, hitfunction:hit, endfunction:none,\
                                                                monsteruuid:"$(selfuuid)", target:0, speed:0.5, hitbox_1:0.15, hitbox_2:0.7, hitbox_3:0.85, wall:1, hitend:1, step:60, system:1}
$execute at @s run function bosses:tech/the_shaman/pattern6/clone/operation/sight_check {selfuuid:"$(selfuuid)"}
data remove storage timeisgold:function_api stack[-1]

# 분신을 보고 있는 플레이어가 없다면 발광 해제 + 진행도 감소
$execute if score @s bosses.the_shaman.pattern6.clone.on_sight matches 1.. unless entity @a[tag=bosses.the_shaman.pattern6.clone.watching.$(selfuuid)] run scoreboard players remove @s bosses.the_shaman.pattern6.clone.on_sight 1
$execute if score @s bosses.the_shaman.pattern6.clone.on_sight matches 1.. unless entity @a[tag=bosses.the_shaman.pattern6.clone.watching.$(selfuuid)] run effect clear @s minecraft:glowing

# SFX 재생
$execute if predicate system:periodic_tick_5 as @a[tag=bosses.the_shaman.pattern6.clone.watching.$(selfuuid)] at @s run function bosses:tech/the_shaman/pattern6/clone/sfx/watching_clone {selfuuid:"$(selfuuid)"}

# 플레이어가 일정 시간 동안 이 분신을 봤다면 파괴
execute if score @s bosses.the_shaman.pattern6.clone.on_sight >= #SYSTEM bosses.the_shaman.pattern6.clone.max_on_sight on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] run function bosses:tech/the_shaman/pattern6/clone/destroy with entity @s data
$tag @a[tag=bosses.the_shaman.pattern6.clone.watching.$(selfuuid)] remove bosses.the_shaman.pattern6.clone.watching.$(selfuuid)