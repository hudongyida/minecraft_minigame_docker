function it:tech/utils/detect/right_click {advancement:"it:active/vampire_fang_right_click", item:ghast_tear, item_tag:vampire_fang, tag:item.vampire_fang.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.vampire_fang.cooldown, failTag:item.vampire_fang.fail, passTag:item.vampire_fang.use, inputTag:item.vampire_fang.pre, status:1}
tag @s[tag=item.vampire_fang.fail] remove item.vampire_fang.fail

execute as @s[tag=item.vampire_fang.use] at @s if entity @e[tag=monster.ally,tag=!monster.invulnerable,tag=!boss,distance=..5] run tag @s add item.vampire_fang.activate
execute as @s[tag=item.vampire_fang.use,tag=!item.vampire_fang.activate] run function it:tech/utils/notify/init {function:"it:tech/active/vampire_fang/notify/no_ally_monsters_nearby"}
tag @s[tag=item.vampire_fang.use] remove item.vampire_fang.use

execute as @s[tag=item.vampire_fang.activate] run function it:tech/active/vampire_fang/ability

tag @s[tag=item.vampire_fang.activate] remove item.vampire_fang.activate