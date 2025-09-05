function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

$execute positioned ^ ^ ^ run function $(path)/tracking_object/$(initfunction) with entity @s data

$scoreboard players set @s monsters.utils.tracking_object.step $(step)
$scoreboard players set @s monsters.utils.tracking_object.wall_check $(wall)
$scoreboard players set @s monsters.utils.tracking_object.entity_check $(hitend)
$scoreboard players set @s monsters.utils.tracking_object.force_x $(force_x)
$scoreboard players set @s monsters.utils.tracking_object.force_y $(force_y)
$scoreboard players set @s monsters.utils.tracking_object.reflection_count $(reflection)
$scoreboard players set @s monsters.utils.tracking_object.target $(target)

scoreboard players operation @s monsters.utils.tracking_object.tracking_check = @s monsters.utils.tracking_object.force_x
scoreboard players operation @s monsters.utils.tracking_object.tracking_check += @s monsters.utils.tracking_object.force_y
execute if score @s monsters.utils.tracking_object.tracking_check matches 1.. run scoreboard players set @s monsters.utils.tracking_object.tracking_check 1

$tag @s remove monsters.utils.tracking_object.marker.init_target.$(monsteruuid)