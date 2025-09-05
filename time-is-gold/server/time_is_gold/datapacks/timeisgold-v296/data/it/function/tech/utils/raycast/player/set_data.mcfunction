$execute as @s at @s run function it:tech/$(type)/$(path)/raycast/$(initfunction) {playerid:$(playerid)}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].selfuuid set from storage timeisgold:uuid_tokenizer output
$scoreboard players set @s item.utils.raycast.player.step $(step)
$scoreboard players set @s item.utils.raycast.player.wall_check $(wall)
$scoreboard players set @s item.utils.raycast.player.entity_check $(hitend)

$tag @s remove item.utils.raycast.player.init_target.$(playerid)
execute as @s run function it:tech/utils/raycast/player/step with storage timeisgold:function_api stack[-1]