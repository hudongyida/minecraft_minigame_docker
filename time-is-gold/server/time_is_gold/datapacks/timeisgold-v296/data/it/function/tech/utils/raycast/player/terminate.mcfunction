$execute positioned ^ ^ ^ run function it:tech/$(type)/$(path)/raycast/$(endfunction) {playerid:$(playerid)}
$execute as @a[tag=item.utils.raycast.player.hit.$(selfuuid)] run tag @s remove item.utils.raycast.player.hit.$(selfuuid)
kill @s