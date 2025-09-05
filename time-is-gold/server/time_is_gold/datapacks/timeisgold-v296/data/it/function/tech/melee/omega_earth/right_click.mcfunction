function it:tech/utils/detect/right_click {advancement:"it:melee/omega_earth_right_click", item:player_head, item_tag:omega_earth, tag:item.omega_earth.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.omega_earth.fail, passTag:item.omega_earth.use, inputTag:item.omega_earth.pre, scoreboard:item.omega_earth.cooldown, status:1}
tag @s[tag=item.omega_earth.fail] remove item.omega_earth.fail

execute as @s[tag=item.omega_earth.use] anchored eyes positioned ^ ^ ^ run function it:tech/melee/omega_earth/raycast_call
execute as @s[tag=item.omega_earth.use] run function it:tech/utils/cooldown/init {scoreboard:item.omega_earth.cooldown, value:60}
execute as @s[tag=item.omega_earth.use] run function it:tech/utils/use_cost/time {cost:200}

tag @s[tag=item.omega_earth.use] remove item.omega_earth.use