scoreboard players remove @s item.utils.raycast.default.step 1
$execute as @s positioned ^ ^ ^ run function it:tech/$(type)/$(path)/raycast/$(tickfunction) with storage timeisgold:function_api stack[-1]

execute as @s if score @s item.utils.raycast.default.step matches 0 run scoreboard players set @s item.utils.raycast.default.terminate_check 1
$execute as @s if score @s item.utils.raycast.default.wall_check matches 1 positioned ^ ^ ^$(speed) unless block ~ ~ ~ #it:air run scoreboard players set @s item.utils.raycast.default.terminate_check 1
$execute as @s if score @s item.utils.raycast.default.entity_check matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) item.utils.raycast.default.terminate_check 1

$execute as @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.raycast.default.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function it:tech/$(type)/$(path)/raycast/$(hitfunction) {playerid:$(playerid)}
$execute as @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!item.utils.raycast.default.hit.$(selfuuid),dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add item.utils.raycast.default.hit.$(selfuuid)

$execute as @s unless score @s item.utils.raycast.default.terminate_check matches 1 positioned ^ ^ ^$(speed) run function it:tech/utils/raycast/default/step with storage timeisgold:function_api stack[-1]
execute as @s if score @s item.utils.raycast.default.terminate_check matches 1 positioned ^ ^ ^ run function it:tech/utils/raycast/default/terminate with storage timeisgold:function_api stack[-1]