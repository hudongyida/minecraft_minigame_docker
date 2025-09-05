function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

$execute as @s positioned ~ ~ ~ run function it:tech/$(type)/$(path)/throw_item/$(initfunction) with entity @s data
execute as @s positioned ~ ~ ~ run function it:tech/utils/throw_item/create_display with entity @s data

$execute as @s run scoreboard players set @s item.utils.throw_item.step $(step)
$execute as @s run scoreboard players set @s item.utils.throw_item.wall_check $(wall)
$execute as @s run scoreboard players set @s item.utils.throw_item.entity_check $(hitend)
$execute as @s run tag @s remove item.utils.throw_item.marker.init_target.$(playerid)