execute as @s at @s run summon marker ~ ~ ~ {Tags:["item.reaper_scythe.portal","admin.kill_on_reset"],data:{Owner:0}}
function system:utils/uuid_tokenizer/init
execute as @n[tag=item.reaper_scythe.portal] run data modify entity @s data.Owner set from storage timeisgold:uuid_tokenizer output
#say Im portal