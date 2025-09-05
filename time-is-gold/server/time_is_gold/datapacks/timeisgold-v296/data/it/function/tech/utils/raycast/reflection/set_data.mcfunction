$execute as @s at @s run function it:tech/$(type)/$(path)/raycast/$(initfunction) {playerid:$(playerid)}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].selfuuid set from storage timeisgold:uuid_tokenizer output
$scoreboard players set @s item.utils.raycast.reflection.step $(step)
$scoreboard players set @s item.utils.raycast.reflection.wall_check $(wall)
$scoreboard players set @s item.utils.raycast.reflection.entity_check $(hitend)
$scoreboard players set @s item.utils.raycast.reflection.reflection_count $(reflection)

$tag @s remove item.utils.raycast.reflection.init_target.$(playerid)
execute as @s run function it:tech/utils/raycast/reflection/step with storage timeisgold:function_api stack[-1]