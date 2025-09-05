function it:tech/utils/detect/right_click {advancement:"it:active/nailed_doll_right_click", item:player_head, item_tag:nailed_doll, tag:item.nailed_doll.pre, type:0}
function it:tech/utils/cooldown/check {scoreboard:item.nailed_doll.cooldown, failTag:item.nailed_doll.fail, passTag:item.nailed_doll.use, inputTag:item.nailed_doll.pre, status:1}
tag @s[tag=item.nailed_doll.fail] remove item.nailed_doll.fail

execute as @s[tag=item.nailed_doll.use] run scoreboard players set @s item.nailed_doll.cooldown 100000
execute as @s[tag=item.nailed_doll.use] run scoreboard players set @s item.nailed_doll.tick 200
execute as @s[tag=item.nailed_doll.use] run scoreboard players set #MAX_VALUE item.nailed_doll.tick 200
execute as @s[tag=item.nailed_doll.use] run scoreboard players reset @s item.nailed_doll.damage_taken
tag @s[tag=item.nailed_doll.use] remove item.nailed_doll.use