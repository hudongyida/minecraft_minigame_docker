function it:tech/utils/detect/right_click {advancement:"it:melee/zero_point_right_click", item:iron_sword, item_tag:zero_point, tag:item.zero_point.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.zero_point.fail, passTag:item.zero_point.use, inputTag:item.zero_point.pre, scoreboard:item.zero_point.cooldown, status:0}
tag @s[tag=item.zero_point.fail] remove item.zero_point.fail

# 충전 안 된 상태 체크
execute as @s[tag=item.zero_point.use] unless score @s item.zero_point.charge matches 1.. run function it:tech/utils/notify/init {function:"it:tech/melee/zero_point/notify/ability_not_charged"}
execute as @s[tag=item.zero_point.use] unless score @s item.zero_point.charge matches 1.. run tag @s remove item.zero_point.use

execute as @s[tag=item.zero_point.use] at @s run function it:tech/melee/zero_point/operation/init
execute as @s[tag=item.zero_point.use] run function it:tech/utils/cooldown/init {scoreboard:item.zero_point.cooldown, value:20}

tag @s[tag=item.zero_point.use] remove item.zero_point.use