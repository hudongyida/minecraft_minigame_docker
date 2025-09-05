$execute as @s positioned ~ ~ ~ run function it:tech/$(type)/$(path)/throw_item/$(endfunction) with entity @s data
$tag @e[tag=item.utils.throw_item.hit.$(selfuuid)] remove item.utils.throw_item.hit.$(selfuuid)

$execute as @s positioned ~ ~ ~ run kill @n[type=item_display,tag=item.utils.throw_item.item_display.$(selfuuid)]
kill @s