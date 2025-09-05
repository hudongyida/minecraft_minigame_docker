# 실행 인자 - item.utils.throw_item.marker 태그가 부여된 모든 마커
### 주의! - tickfunction 함수의 실행 인자는 마커가 아니라 아이템 디스플레이입니다.

scoreboard players remove @s item.utils.throw_item.step 1
$execute at @s positioned ^ ^ ^ run function $(operate_function)
$execute at @s positioned ^ ^ ^ run tp @s ^ ^ ^$(speed)
$execute at @s rotated as @s run tp @n[type=item_display,tag=item.utils.throw_item.item_display.$(selfuuid)] ^ ^ ^ ~ ~
$execute at @s run scoreboard players operation @n[type=item_display,tag=item.utils.throw_item.item_display.$(selfuuid),distance=..0.5] item.utils.throw_item.step = @s item.utils.throw_item.step
$execute at @s as @n[type=item_display,tag=item.utils.throw_item.item_display.$(selfuuid),distance=..0.5] run function it:tech/$(type)/$(path)/throw_item/$(tickfunction)

execute as @s if score @s item.utils.throw_item.step matches 0 run scoreboard players set @s item.utils.throw_item.terminate_check 1
$execute as @s at @s if score @s item.utils.throw_item.wall_check matches 1 positioned ^ ^ ^$(speed) unless block ~ ~ ~ #it:air run scoreboard players set @s item.utils.throw_item.terminate_check 1
$execute as @s at @s if score @s item.utils.throw_item.entity_check matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) item.utils.throw_item.terminate_check 1

$execute as @s at @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.throw_item.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function it:tech/$(type)/$(path)/throw_item/$(hitfunction) {playerid:$(playerid)}
$execute as @s at @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.throw_item.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add item.utils.throw_item.hit.$(selfuuid)

execute as @s if score @s item.utils.throw_item.terminate_check matches 1 positioned ^ ^ ^ run function it:tech/utils/throw_item/terminate with entity @s data