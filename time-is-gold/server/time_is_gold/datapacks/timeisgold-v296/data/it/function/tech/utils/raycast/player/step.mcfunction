scoreboard players remove @s item.utils.raycast.player.step 1
$execute as @s positioned ^ ^ ^ run function it:tech/$(type)/$(path)/raycast/$(tickfunction) with storage timeisgold:function_api stack[-1]

execute as @s if score @s item.utils.raycast.player.step matches 0 run scoreboard players set @s item.utils.raycast.player.terminate_check 1
$execute as @s if score @s item.utils.raycast.player.wall_check matches 1 positioned ^ ^ ^$(speed) unless block ~ ~ ~ #it:air run scoreboard players set @s item.utils.raycast.player.terminate_check 1
$execute as @s if score @s item.utils.raycast.player.entity_check matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,tag=!item.utils.raycast.player.origin,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(selfuuid) item.utils.raycast.player.terminate_check 1

$execute as @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,tag=!item.utils.raycast.player.hit.$(selfuuid),tag=!item.utils.raycast.player.origin,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function it:tech/$(type)/$(path)/raycast/$(hitfunction) {playerid:$(playerid)}
$execute as @s positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @a[predicate=system:player,tag=!item.utils.raycast.player.hit.$(selfuuid),tag=!item.utils.raycast.player.origin,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add item.utils.raycast.player.hit.$(selfuuid)

$execute as @s unless score @s item.utils.raycast.player.terminate_check matches 1 positioned ^ ^ ^$(speed) run function it:tech/utils/raycast/player/step with storage timeisgold:function_api stack[-1]
execute as @s if score @s item.utils.raycast.player.terminate_check matches 1 positioned ^ ^ ^ run function it:tech/utils/raycast/player/terminate with storage timeisgold:function_api stack[-1]