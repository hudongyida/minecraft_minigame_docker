function it:tech/utils/detect/right_click {advancement:"it:active/laboratory_slime_right_click", item:player_head, item_tag:laboratory_slime, tag:item.laboratory_slime.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.laboratory_slime.fail, passTag:item.laboratory_slime.use, inputTag:item.laboratory_slime.pre, scoreboard:item.laboratory_slime.cooldown, status:1}
execute as @a[tag=item.laboratory_slime.fail] run tag @s remove item.laboratory_slime.fail

execute as @a[tag=item.laboratory_slime.use] run function it:tech/utils/cooldown/init {scoreboard:item.laboratory_slime.cooldown, value:160}
execute as @a[tag=item.laboratory_slime.use] at @s run playsound entity.slime.squish hostile @a ~ ~ ~ 0.5 2 0
execute as @a[tag=item.laboratory_slime.use] at @s run summon slime ~ ~0.1 ~ {Tags:["item.laboratory_slime.slime","admin.kill_on_reset","monster","monster.stun_exception"],NoAI:true,Size:1b,Health:1f,attributes:[{id:"max_health",base:1},{id:"armor",base:0},{id:"scale",base:0.25}],Passengers:[{Tags:["item.laboratory_slime.block_display","admin.kill_on_reset"],id:block_display,block_state:{Name:"minecraft:glass"},transformation:{"translation":[-0.25,-0.35,-0.25],"left_rotation":[1.0,0.0,0.0,0.0],right_rotation:[1.0,0.0,0.0,0.0],scale:[0.5,0.5,0.5]}}]}
execute as @a[tag=item.laboratory_slime.use] run tag @s remove item.laboratory_slime.use