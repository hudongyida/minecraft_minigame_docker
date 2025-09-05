# 실행 인자: 초기화되지 않은 하이퍼리트랙터 마커

execute at @s run summon block_display ~ ~ ~ {Tags:["item.hyperretractor.block_display.placed","admin.kill_on_reset","item.hyperretractor.block_display.uninitialized"],block_state:{Name:"minecraft:sculk_shrieker",Properties:{shrieking:"true"}},interpolation_duration:1s,teleport_duration:1s,transformation:{translation:[-0.5,0.5,-0.5],left_rotation:[1.0,0.0,0.0,0.0],right_rotation:[1.0,0.0,0.0,0.0],scale:[1.0,1.0,1.0]}}
execute at @s as @n[type=block_display,tag=item.hyperretractor.block_display.uninitialized,distance=..0.5] run function system:utils/uuid_tokenizer/init
data modify entity @s data.displayuuid set from storage timeisgold:uuid_tokenizer output

scoreboard players set @s item.hyperretractor.tick 239

function it:tech/active/hyperretractor/macro/remove_tag with entity @s data