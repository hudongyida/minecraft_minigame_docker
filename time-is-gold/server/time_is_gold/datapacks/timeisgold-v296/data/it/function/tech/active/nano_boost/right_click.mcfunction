function it:tech/utils/detect/right_click {advancement:"it:active/nano_boost_right_click", item_tag:nano_boost, tag:item.nano_boost.on_cooldown, type:0}
function it:tech/utils/cooldown/check {failTag:item.nano_boost.fail, passTag:item.nano_boost.key, inputTag:item.nano_boost.on_cooldown, scoreboard:item.nano_boost.cooldown, status:1}
execute as @s[tag=item.nano_boost.on_cooldown] run tag @s remove item.nano_boost.on_cooldown

execute as @s[tag=item.nano_boost.key] run function it:tech/active/nano_boost/functions/key
execute as @s[tag=item.nano_boost.key] run tag @s remove item.nano_boost.key

execute as @s[tag=item.nano_boost.detect] at @s run function it:tech/active/nano_boost/functions/detect_player
execute as @s[tag=item.nano_boost.detect] at @s run function it:tech/active/nano_boost/functions/buff_to
execute as @s[tag=item.nano_boost.detect] at @s run function it:tech/utils/cooldown/init {scoreboard:item.nano_boost.cooldown, value:600}
execute as @s[tag=item.nano_boost.detect] run return run tag @s remove item.nano_boost.detect

execute as @s[tag=item.nano_boost.self] run function it:tech/active/nano_boost/functions/buff_self
execute as @s[tag=item.nano_boost.self] run function it:tech/utils/cooldown/init {scoreboard:item.nano_boost.cooldown, value:600}
execute as @s[tag=item.nano_boost.self] run tag @s remove item.nano_boost.self