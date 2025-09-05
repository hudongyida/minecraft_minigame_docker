function it:tech/utils/detect/right_click {advancement:"it:active/translocator_right_click", item:end_crystal, item_tag:translocator, tag:item.translocator.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.translocator.fail, passTag:item.translocator.use, inputTag:item.translocator.pre, scoreboard:item.translocator.cooldown, status:1}
tag @s[tag=item.translocator.fail] remove item.translocator.fail

# 다른 플레이어가 존재하지 않는 경우
execute as @s[tag=item.translocator.use] at @s unless entity @a[predicate=system:player,tag=!item.translocator.use,distance=1..] run tag @s add item.translocator.no_target
execute as @s[tag=item.translocator.no_target] at @s run function it:tech/utils/notify/init {function:"it:tech/active/translocator/notify/no_target_found"}
execute as @s[tag=item.translocator.no_target] run tag @s remove item.translocator.use
execute as @s[tag=item.translocator.no_target] run tag @s remove item.translocator.no_target

execute as @s[tag=item.translocator.use] run function it:tech/utils/cooldown/init {scoreboard:item.translocator.cooldown, value:400}
execute as @s[tag=item.translocator.use] at @s run function it:tech/active/translocator/operation/init

# SFX
execute as @s[tag=item.translocator.use] at @s run playsound minecraft:entity.illusioner.mirror_move hostile @s ~ ~ ~ 1 1

tag @s[tag=item.translocator.use] remove item.translocator.use