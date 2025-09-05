scoreboard players remove @s item.utils.raycast.reflection.step 1
$execute as @s positioned ^ ^ ^ run function it:tech/$(type)/$(path)/raycast/$(tickfunction)

execute as @s if score @s item.utils.raycast.reflection.step matches 0 run scoreboard players set @s item.utils.raycast.reflection.terminate_check 1
$execute as @s if score @s item.utils.raycast.reflection.wall_check matches 1 positioned ^ ^ ^$(speed) unless block ~ ~ ~ #it:air run scoreboard players set @s item.utils.raycast.reflection.terminate_check 1
$execute as @s if score @s item.utils.raycast.reflection.entity_check matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) item.utils.raycast.reflection.terminate_check 1

$execute as @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.raycast.reflection.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function it:tech/$(type)/$(path)/raycast/$(hitfunction) {playerid:$(playerid)}
$execute as @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.raycast.reflection.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add item.utils.raycast.reflection.hit.$(selfuuid)

$execute as @s unless score @s item.utils.raycast.reflection.terminate_check matches 1 positioned ^ ^ ^$(speed) run function it:tech/utils/raycast/reflection/step with storage timeisgold:function_api stack[-1]
execute as @s if score @s item.utils.raycast.reflection.terminate_check matches 1 positioned ^ ^ ^ run function it:tech/utils/raycast/reflection/terminate with storage timeisgold:function_api stack[-1]