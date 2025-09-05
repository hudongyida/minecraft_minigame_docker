# 실행 인자: monsters.utils.tracking_object.marker 태그가 부여된 모든 마커

scoreboard players remove @s monsters.utils.tracking_object.step 1
execute if score @s monsters.utils.tracking_object.tracking_check matches 1.. run function monsters:tech/global/utils/tracking_object/rotate with entity @s data
$execute at @s positioned ^ ^ ^ run tp @s ^ ^ ^$(speed)
$execute at @s run function $(path)/tracking_object/$(tickfunction) with entity @s data

execute if score @s monsters.utils.tracking_object.step matches 0 run scoreboard players set @s monsters.utils.tracking_object.terminate_check 1
$execute at @s if score @s monsters.utils.tracking_object.wall_check matches 1 positioned ^ ^ ^$(speed) unless block ~ ~ ~ #it:air run scoreboard players set @s monsters.utils.tracking_object.terminate_check 1
#$execute as @s at @s if score @s monsters.utils.tracking_object.entity_check matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) monsters.utils.tracking_object.terminate_check 1

$execute if score @s monsters.utils.tracking_object.entity_check matches 1 if score @s monsters.utils.tracking_object.target matches 0..1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) monsters.utils.tracking_object.default.terminate_check 1
$execute if score @s monsters.utils.tracking_object.entity_check matches 1 if score @s monsters.utils.tracking_object.target matches -1..0 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster.ally,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) monsters.utils.tracking_object.default.terminate_check 1

$execute as @s[tag=!monsters.arrow_reflected] positioned ~ ~ ~ if entity @a[scores={item.real_time_projectile_interceptor.active=1},distance=..2.5] run function it:tech/passive/real_time_projectile_interceptor/functions/block_tracking_object {selfuuid:"$(selfuuid)"}

$execute if score @s monsters.utils.tracking_object.target matches 0..1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,tag=!monsters.utils.tracking_object.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function $(path)/tracking_object/$(hitfunction) {monsteruuid:"$(monsteruuid)"}
$execute if score @s monsters.utils.tracking_object.target matches 0..1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,tag=!monsters.utils.tracking_object.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add monsters.utils.tracking_object.hit.$(selfuuid)
$execute if score @s monsters.utils.tracking_object.target matches -1..0 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster.ally,tag=!monsters.utils.tracking_object.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function $(path)/tracking_object/$(hitfunction) {monsteruuid:"$(monsteruuid)"}
$execute if score @s monsters.utils.tracking_object.target matches -1..0 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster.ally,tag=!monsters.utils.tracking_object.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add monsters.utils.tracking_object.hit.$(selfuuid)

$execute if score @s monsters.utils.tracking_object.terminate_check matches 1 positioned ^ ^ ^$(speed) run function monsters:tech/global/utils/tracking_object/terminate with entity @s data