# 실행 인자: 모닥불 인터랙션

$execute as $(playeruuid) run tag @s add item.chronos_bonfire.owner
execute as @s if function it:tech/active/chronos_bonfire/owner_check run tag @s add item.chronos_bonfire.retrieve_target

$execute as @s[tag=item.chronos_bonfire.retrieve_target] as $(playeruuid) run function it:item_manager/active/legendary/chronos_bonfire
execute as @s[tag=item.chronos_bonfire.retrieve_target] at @s as @n[type=marker,tag=item.chronos_bonfire.marker.placed,distance=..0.5] run function it:tech/active/chronos_bonfire/macro/destroy with entity @s data

execute as @s[tag=!item.chronos_bonfire.retrieve_target] run data remove entity @s interaction
$tag $(playeruuid) remove item.chronos_bonfire.owner