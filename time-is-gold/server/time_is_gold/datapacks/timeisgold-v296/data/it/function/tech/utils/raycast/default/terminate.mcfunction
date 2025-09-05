$execute positioned ^ ^ ^ run function it:tech/$(type)/$(path)/raycast/$(endfunction) {playerid:$(playerid)}
$execute as @e[tag=item.utils.raycast.default.hit.$(selfuuid)] run tag @s remove item.utils.raycast.default.hit.$(selfuuid)
kill @s