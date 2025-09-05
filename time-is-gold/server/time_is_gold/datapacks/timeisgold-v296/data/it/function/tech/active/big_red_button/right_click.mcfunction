function it:tech/utils/detect/right_click {advancement:"it:active/big_red_button_right_click", item:player_head, item_tag:big_red_button, tag:item.big_red_button.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.big_red_button.cooldown, inputTag:item.big_red_button.pre, passTag:item.big_red_button.use, failTag:item.big_red_button.fail, status:1}
tag @s[tag=item.big_red_button.fail] remove item.big_red_button.fail

# check
execute as @s[tag=item.big_red_button.use] at @s as @e[type=#minecraft:arrows,distance=..30] if function it:tech/active/big_red_button/owner_check run tag @s add item.big_red_button.explode

# isNoArrow
execute as @s[tag=item.big_red_button.use] unless entity @n[type=#minecraft:arrows,tag=item.big_red_button.explode,distance=..30] at @s run function it:tech/utils/notify/init {function:"it:tech/active/big_red_button/notify/no_nearby_arrows"}

# Explode
execute as @s[tag=item.big_red_button.use] at @s if entity @n[type=#minecraft:arrows,tag=item.big_red_button.explode,distance=..30] run function it:tech/active/big_red_button/ability

tag @s[tag=item.big_red_button.use] remove item.big_red_button.use