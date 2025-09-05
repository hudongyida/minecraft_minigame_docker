execute as @a run function it:tech/utils/detect/slot {item:magenta_glazed_terracotta, item_tag:request_timeout, tag:item.request_timeout.active, slot:5}
execute as @a[tag=item.request_timeout.active] run scoreboard players set @s item.request_timeout.nullify_check 1
execute as @a[tag=item.request_timeout.active] unless score @s item.request_timeout.tick matches 0.. run scoreboard players set @s item.request_timeout.tick 20

execute as @a[tag=item.request_timeout.active,scores={item.request_timeout.damage_stored=1..}] if score @s item.request_timeout.tick matches 1.. run scoreboard players remove @s item.request_timeout.tick 1
execute as @a[tag=item.request_timeout.active,scores={item.request_timeout.damage_stored=1..}] if score @s item.request_timeout.tick matches 0 run function it:tech/passive/request_timeout/operation/init

# 아이템을 들면 누적된 데미지 표시
execute as @a[tag=item.request_timeout.active,scores={item.request_timeout.damage_stored=1..}] if items entity @s weapon.mainhand *[custom_data~{item:request_timeout}] run function it:tech/passive/request_timeout/display_hud

# 장착 해제 시 누적된 데미지 방출
execute as @a[tag=!item.request_timeout.active,scores={item.request_timeout.damage_stored=1..}] run function it:tech/passive/request_timeout/release_damage
execute as @a[tag=!item.request_timeout.active,scores={item.request_timeout.damage_stored=1..}] run scoreboard players set @s item.request_timeout.tick 20

tag @a[tag=item.request_timeout.active] remove item.request_timeout.active