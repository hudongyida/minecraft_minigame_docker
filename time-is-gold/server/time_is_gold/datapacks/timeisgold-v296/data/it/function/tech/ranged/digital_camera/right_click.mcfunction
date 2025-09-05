function it:tech/utils/detect/right_click {advancement:"it:ranged/digital_camera_right_click", item_tag:digital_camera, tag:item.digital_camera.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.digital_camera.fail, passTag:item.digital_camera.use, inputTag:item.digital_camera.pre, scoreboard:item.digital_camera.cooldown, status:0}
tag @s[tag=item.digital_camera.fail] remove item.digital_camera.fail

execute as @s[tag=item.digital_camera.use] run function it:tech/utils/use_cost/time {cost:10}
execute as @s[tag=item.digital_camera.use] run function it:tech/utils/cooldown/init {scoreboard:item.digital_camera.cooldown, value:20}
execute as @s[tag=item.digital_camera.use] at @s run function it:tech/ranged/digital_camera/operation/init

# SFX
execute as @s[tag=item.digital_camera.use] at @s run playsound minecraft:block.vault.insert_item block @a ~ ~ ~ 1 2

# VFX
execute as @s[tag=item.digital_camera.use] at @s positioned ~ ~1.5 ~ run particle flash ^ ^ ^0.8 0 0 0 0 2 force
execute as @s[tag=item.digital_camera.use] at @s positioned ~ ~1.5 ~ run particle end_rod ^ ^ ^ 0 0 0 0.15 8 force

tag @s[tag=item.digital_camera.use] remove item.digital_camera.use