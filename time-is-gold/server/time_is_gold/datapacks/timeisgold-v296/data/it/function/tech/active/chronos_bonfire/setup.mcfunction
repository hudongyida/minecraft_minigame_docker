# 실행 인자: 초기화되지 않은 item.chronos_bonfire.marker.placed 마커

execute at @s run summon block_display ~ ~ ~ {Tags:["item.chronos_bonfire.block_display.placed","admin.kill_on_reset","item.chronos_bonfire.block_display.uninitialized"],block_state:{Name:"minecraft:soul_campfire",Properties:{lit:"true"}},interpolation_duration:1s,teleport_duration:1s,transformation:{translation:[-0.5,0.5,-0.5],left_rotation:[1.0,0.0,0.0,0.0],right_rotation:[1.0,0.0,0.0,0.0],scale:[1.0,1.0,1.0]}}
execute at @s as @n[type=block_display,tag=item.chronos_bonfire.block_display.uninitialized,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.displayuuid set from storage timeisgold:uuid_tokenizer output

execute at @s run summon interaction ~ ~ ~ {Tags:["item.chronos_bonfire.interaction.placed","admin.kill_on_reset","item.chronos_bonfire.interaction.uninitialized"],response:true}
execute at @s as @n[type=interaction,tag=item.chronos_bonfire.interaction.uninitialized,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.interactionuuid set from storage timeisgold:uuid_tokenizer output

function it:tech/active/chronos_bonfire/macro/remove_tag with entity @s data