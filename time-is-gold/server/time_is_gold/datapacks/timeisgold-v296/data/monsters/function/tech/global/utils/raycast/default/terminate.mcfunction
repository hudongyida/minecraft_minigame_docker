$execute positioned ^ ^ ^ run function $(path)/raycast/$(endfunction) with storage timeisgold:function_api stack[-1]
$execute as @e[tag=monsters.utils.raycast.default.hit.$(selfuuid)] run tag @s remove monsters.utils.raycast.default.hit.$(selfuuid)

kill @s