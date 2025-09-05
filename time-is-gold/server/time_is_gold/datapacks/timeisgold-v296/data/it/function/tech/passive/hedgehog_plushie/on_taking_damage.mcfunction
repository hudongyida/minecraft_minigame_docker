tag @s add item.hedgehog_plushie.active
function it:tech/utils/cooldown/check {scoreboard:item.hedgehog_plushie.cooldown, inputTag:item.hedgehog_plushie.active, passTag:item.hedgehog_plushie.ready, failTag:item.hedgehog_plushie.fail, status:0}
execute as @s[tag=item.hedgehog_plushie.fail] run return run tag @s remove item.hedgehog_plushie.fail

execute as @s[tag=item.hedgehog_plushie.ready] at @s run function it:tech/passive/hedgehog_plushie/operation/init
execute as @s[tag=item.hedgehog_plushie.ready] run function it:tech/utils/cooldown/init {scoreboard:item.hedgehog_plushie.cooldown, value:200}

tag @s remove item.hedgehog_plushie.ready