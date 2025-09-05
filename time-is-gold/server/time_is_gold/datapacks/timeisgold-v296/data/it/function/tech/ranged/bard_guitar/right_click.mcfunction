function it:tech/utils/detect/right_click {advancement:"it:ranged/bard_guitar_right_click", item_tag:bard_guitar, tag:item.bard_guitar.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.bard_guitar.fail, passTag:item.bard_guitar.use, inputTag:item.bard_guitar.pre, scoreboard:item.bard_guitar.cooldown, status:0}
tag @s[tag=item.bard_guitar.fail] remove item.bard_guitar.fail

execute as @s[tag=item.bard_guitar.use] unless score @s item.bard_guitar.playing matches 1.. run function it:tech/ranged/bard_guitar/functions/init
#execute as @s[tag=item.bard_guitar.use] if score @s item.bard_guitar.playing matches 1..25 run function it:tech/ranged/bard_guitar/functions/reset

tag @s[tag=item.bard_guitar.use] remove item.bard_guitar.use