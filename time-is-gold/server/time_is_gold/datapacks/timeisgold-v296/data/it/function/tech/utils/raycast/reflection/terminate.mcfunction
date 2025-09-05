scoreboard players remove @s item.utils.raycast.reflection.reflection_count 1

execute as @s positioned ^ ^ ^ if score @s item.utils.raycast.reflection.step matches 1.. if score @s item.utils.raycast.reflection.reflection_count matches 0.. run function it:tech/utils/raycast/reflection/reflect with storage timeisgold:function_api stack[-1]

$execute as @e[tag=item.utils.raycast.reflection.hit.$(selfuuid)] run tag @s remove item.utils.raycast.reflection.hit.$(selfuuid)
kill @s