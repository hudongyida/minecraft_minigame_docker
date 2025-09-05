function it:tech/utils/detect/right_click {advancement:"it:melee/chainsaw_right_click", item:iron_sword, item_tag:chainsaw, tag:item.chainsaw.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.chainsaw.fail, passTag:item.chainsaw.use, inputTag:item.chainsaw.pre, scoreboard:item.chainsaw.cooldown, status:0}
tag @s[tag=item.chainsaw.fail] remove item.chainsaw.fail

execute as @s[tag=item.chainsaw.use] run function it:tech/utils/use_cost/time {cost:30}
execute as @s[tag=item.chainsaw.use] run function it:tech/utils/cooldown/init {scoreboard:item.chainsaw.cooldown, value:20}
execute as @s[tag=item.chainsaw.use] run effect give @s strength 1 1 false

# SFX
execute as @s[tag=item.chainsaw.use] at @s run playsound entity.horse.angry neutral @a ~ ~ ~ .7 0 0

# VFX
execute as @s[tag=item.chainsaw.use] at @s positioned ~ ~1 ~ run particle minecraft:ash ^-.3 ^ ^.5 0 0 0 0 3 force
execute as @s[tag=item.chainsaw.use] at @s anchored eyes positioned ^-.3 ^ ^.2 run particle minecraft:block_crumble{block_state:"diorite"} ~ ~ ~ .1 .2 .1 0 4 force

tag @s[tag=item.chainsaw.use] remove item.chainsaw.use