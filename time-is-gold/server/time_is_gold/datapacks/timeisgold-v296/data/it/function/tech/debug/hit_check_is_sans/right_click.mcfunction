function it:tech/utils/detect/right_click {advancement:"it:debug/hit_check_is_sans_right_click", item:stick, item_tag:hit_check_is_sans, tag:item.hit_check_is_sans.use, type:0}

execute as @s[tag=item.hit_check_is_sans.use] run function it:tech/debug/hit_check_is_sans/debug_eventlistener

tag @s[tag=item.hit_check_is_sans.use] remove item.hit_check_is_sans.use
advancement revoke @s only it:debug/hit_check_is_sans_right_click