function it:tech/utils/detect/right_click {advancement:"it:active/anticognition_field_right_click", item:player_head, item_tag:anticognition_field, tag:item.anticognition_field.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.anticognition_field.cooldown, inputTag:item.anticognition_field.pre, passTag:item.anticognition_field.use, failTag:item.anticognition_field.fail, status:1}
tag @s[tag=item.anticognition_field.fail] remove item.anticognition_field.fail

execute as @s[tag=item.anticognition_field.use] run scoreboard players set @s item.anticognition_field.cooldown 100000
execute as @s[tag=item.anticognition_field.use] run scoreboard players set @s item.anticognition_field.tick 200
execute as @s[tag=item.anticognition_field.use] run scoreboard players set #MAX_VALUE item.anticognition_field.tick 200
execute as @s[tag=item.anticognition_field.use] run function it:tech/utils/notify/start_cooldown

# 활성화 SFX
execute as @s[tag=item.anticognition_field.use] at @s run playsound entity.zombie_villager.converted hostile @s ~ ~ ~ 0.5 2 0.5

tag @s[tag=item.anticognition_field.use] remove item.anticognition_field.use