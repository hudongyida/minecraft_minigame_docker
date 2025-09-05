function it:tech/utils/detect/right_click {advancement:"it:active/diy_repair_kit_right_click", item:glow_item_frame, item_tag:diy_repair_kit, tag:item.diy_repair_kit.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.diy_repair_kit.fail, passTag:item.diy_repair_kit.use, inputTag:item.diy_repair_kit.pre, scoreboard:item.diy_repair_kit.cooldown, status:0}
tag @s[tag=item.diy_repair_kit.fail] remove item.diy_repair_kit.fail

execute as @s[tag=item.diy_repair_kit.use] run function it:tech/utils/cooldown/init {scoreboard:item.diy_repair_kit.cooldown, value:6}

execute as @s[tag=item.diy_repair_kit.use] unless items entity @s weapon.offhand *[minecraft:damage] run title @s actionbar {"translate": "item.diy_repair_kit.notify.item"}
execute as @s[tag=item.diy_repair_kit.use] unless items entity @s weapon.offhand *[minecraft:damage] run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0.5 1
execute as @s[tag=item.diy_repair_kit.use] unless items entity @s weapon.offhand *[minecraft:damage] run tag @s remove item.diy_repair_kit.use

execute as @s[tag=item.diy_repair_kit.use] run function it:tech/active/diy_repair_kit/functions/init
execute as @s[tag=item.diy_repair_kit.use] run item modify entity @s weapon.offhand it:active/diy_repair_kit_repair

execute as @s[tag=item.diy_repair_kit.use] run playsound minecraft:block.smithing_table.use block @s ~ ~ ~ 1 0.5 1
execute as @s[tag=item.diy_repair_kit.use] run particle minecraft:lava ~ ~1 ~ .3 .3 .3 0.05 5 force
execute as @s[tag=item.diy_repair_kit.use] run particle minecraft:poof ~ ~1 ~ .3 .3 .3 0.05 10 force

tag @s[tag=item.diy_repair_kit.use] remove item.diy_repair_kit.use