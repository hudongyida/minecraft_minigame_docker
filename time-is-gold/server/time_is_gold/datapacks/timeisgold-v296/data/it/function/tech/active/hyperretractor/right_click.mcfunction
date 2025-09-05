function it:tech/utils/detect/right_click {advancement:"it:active/hyperretractor_right_click", item_tag:hyperretractor, tag:item.hyperretractor.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.hyperretractor.fail, passTag:item.hyperretractor.use, inputTag:item.hyperretractor.pre, scoreboard:item.hyperretractor.cooldown, status:1}
tag @s[tag=item.hyperretractor.fail] remove item.hyperretractor.fail

execute as @s[tag=item.hyperretractor.use] run scoreboard players set @s item.hyperretractor.cooldown 100000
execute as @s[tag=item.hyperretractor.use] run scoreboard players set @s item.hyperretractor.tick 200
execute as @s[tag=item.hyperretractor.use] run scoreboard players set #MAX_VALUE item.hyperretractor.tick 200
execute as @s[tag=item.hyperretractor.use] at @s run function it:tech/active/hyperretractor/operation/summon

# SFX
execute as @s[tag=item.hyperretractor.use] at @s run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1 2

tag @s[tag=item.hyperretractor.use] remove item.hyperretractor.use