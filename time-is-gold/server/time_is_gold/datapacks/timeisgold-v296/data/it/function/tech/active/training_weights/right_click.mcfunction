function it:tech/utils/detect/right_click {advancement:"it:active/training_weights_right_click", item:sand, item_tag:training_weights, tag:item.training_weights.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.training_weights.fail, passTag:item.training_weights.use, inputTag:item.training_weights.pre, scoreboard:item.training_weights.cooldown, status:1}
tag @s[tag=item.training_weights.fail] remove item.training_weights.fail

execute as @s[tag=item.training_weights.use] run scoreboard players set @s item.training_weights.cooldown 100000
execute as @s[tag=item.training_weights.use] run scoreboard players set @s item.training_weights.active 200
execute as @s[tag=item.training_weights.use] run scoreboard players set #MAX_VALUE item.training_weights.active 200

# SFX
execute as @s[tag=item.training_weights.use] at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 2

tag @s[tag=item.training_weights.use] remove item.training_weights.use
