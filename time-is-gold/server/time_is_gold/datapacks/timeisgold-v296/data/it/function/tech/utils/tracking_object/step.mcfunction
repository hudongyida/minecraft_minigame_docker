# 실행 인자: item.utils.tracking_object.marker 태그가 부여된 모든 마커

scoreboard players remove @s item.utils.tracking_object.step 1
execute as @s if score @s item.utils.tracking_object.tracking_check matches 1 run function it:tech/utils/tracking_object/rotate with entity @s data
$execute at @s positioned ^ ^ ^ run tp @s ^ ^ ^$(speed)
$execute as @s at @s run function it:tech/$(type)/$(path)/tracking_object/$(tickfunction) with entity @s data

execute as @s if score @s item.utils.tracking_object.step matches 0 run scoreboard players set @s item.utils.tracking_object.terminate_check 1
$execute as @s at @s if score @s item.utils.tracking_object.wall_check matches 1 positioned ^ ^ ^$(speed) unless block ~ ~ ~ #it:air run scoreboard players set @s item.utils.tracking_object.terminate_check 1
$execute as @s at @s if score @s item.utils.tracking_object.entity_check matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) item.utils.tracking_object.terminate_check 1

$execute as @s at @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.tracking_object.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function it:tech/$(type)/$(path)/tracking_object/$(hitfunction) {playerid:$(playerid)}
$execute as @s at @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.tracking_object.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add item.utils.tracking_object.hit.$(selfuuid)

$execute as @s if score @s item.utils.tracking_object.terminate_check matches 1 positioned ^ ^ ^$(speed) run function it:tech/utils/tracking_object/terminate with entity @s data