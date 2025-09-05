function it:tech/utils/detect/right_click {advancement:"it:melee/blackjack_right_click", item:iron_sword, item_tag:blackjack, tag:item.blackjack.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.blackjack.fail, passTag:item.blackjack.use, inputTag:item.blackjack.pre, scoreboard:item.blackjack.cooldown, status:0}
tag @s[tag=item.blackjack.fail] remove item.blackjack.fail

execute as @s[tag=item.blackjack.use] run function it:tech/utils/cooldown/init {scoreboard:item.blackjack.cooldown, value:20}
execute as @s[tag=item.blackjack.use] run function it:tech/melee/blackjack/operation/init

tag @s[tag=item.blackjack.use] remove item.blackjack.use