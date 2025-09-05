function it:tech/utils/detect/right_click {advancement:"it:active/pocket_refrigerator_right_click", item_tag:pocket_refrigerator, tag:item.pocket_refrigerator.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.pocket_refrigerator.fail, passTag:item.pocket_refrigerator.use, inputTag:item.pocket_refrigerator.pre, scoreboard:item.pocket_refrigerator.cooldown, status:1}
tag @s[tag=item.pocket_refrigerator.fail] remove item.pocket_refrigerator.fail

execute as @s[tag=item.pocket_refrigerator.use] run function it:tech/utils/use_cost/time {cost:10}
execute as @s[tag=item.pocket_refrigerator.use] run scoreboard players set @s item.pocket_refrigerator.cooldown 100000
execute as @s[tag=item.pocket_refrigerator.use] run scoreboard players set @s item.pocket_refrigerator.tick 30
execute as @s[tag=item.pocket_refrigerator.use] run scoreboard players set #MAX_VALUE item.pocket_refrigerator.tick 30

# SFX
execute as @s[tag=item.pocket_refrigerator.use] at @s run playsound minecraft:entity.generic.drink player @s ~ ~ ~ 0.5 1

tag @s[tag=item.pocket_refrigerator.use] remove item.pocket_refrigerator.use