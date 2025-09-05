$execute as @s at @s run function $(path)/raycast/$(initfunction) {monsteruuid:"$(monsteruuid)"}
execute as @s run function system:utils/uuid_tokenizer/init
data modify storage timeisgold:function_api stack[-1].selfuuid set from storage timeisgold:uuid_tokenizer output
$scoreboard players set @s monsters.utils.raycast.default.step $(step)
$scoreboard players set @s monsters.utils.raycast.default.wall_check $(wall)
$scoreboard players set @s monsters.utils.raycast.default.entity_check $(hitend)
$scoreboard players set @s monsters.utils.raycast.default.target $(target)
$scoreboard players set @s monsters.utils.raycast.default.system $(system)
$execute if score @s monsters.utils.raycast.default.target matches -1..0 run tag @s add monsters.utils.raycast.default.origin_object.$(monsteruuid)

$tag @s remove monsters.utils.raycast.default.init_target.$(monsteruuid)
execute as @s run function monsters:tech/global/utils/raycast/default/step with storage timeisgold:function_api stack[-1]
